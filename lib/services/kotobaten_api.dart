import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:kotobaten/consts/http.dart';
import 'package:kotobaten/extensions/auth_model.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/models/search_result.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_result.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_option.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/kana_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/new_card_impression.dart';
import 'package:kotobaten/models/slices/practice/sense_guess_impression.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/models/slices/user/user_core.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/services/app_configuration.dart';
import 'package:kotobaten/services/cookies_service.dart';
import 'package:kotobaten/services/cookies_service_base.dart';
import 'package:kotobaten/services/kotobaten_client.dart';
import 'package:kotobaten/services/serialization/responses/cards_response.dart';
import 'package:mockito/annotations.dart';

final kotobatenApiServiceProvider = Provider((ref) => KotobatenApiService(
    ref.watch(authRepositoryProvider.notifier),
    ref.watch(appConfigurationProvider),
    ref.watch(kotobatenClientProvider),
    ref.read(cookiesServiceProvider)));

class KotobatenApiService {
  // Not using AuthService as it'd cause a cyclical dependency.
  final AuthRepository authRepository;
  final AppConfiguration _appConfiguration;
  final KotobatenClient _kotobatenClient;
  final CookiesServiceBase _cookiesService;

  KotobatenApiService(this.authRepository, this._appConfiguration,
      this._kotobatenClient, this._cookiesService);

  Future<AuthResult> login(String username, String password) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'auth/login');

    try {
      final loginResponse = await _kotobatenClient.post(url, body: {
        'grant_type': 'password',
        'username': username,
        'password': password
      });

      final body = utf8.decode(loginResponse.bodyBytes);

      if (loginResponse.statusCode != 200) {
        return AuthResult.error(loginResponse.statusCode);
      }

      await _cookiesService.setCookie(
          'authToken', true.toString(), _appConfiguration.cookieDomain);

      final token = jsonDecode(body)['access_token'] as String;
      return AuthResult.success(token);
    } on ClientException catch (e) {
      return AuthResult.exception(e);
    }
  }

  Future<AuthResult> signupAndLogin(String username, String password) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'auth/signup');

    try {
      final loginResponse = await _kotobatenClient.post(url,
          body: json.encode({'email': username, 'password': password}),
          headers: Map.fromEntries([contentTypeJsonHeader]));

      if (loginResponse.statusCode >= 400) {
        return AuthResult.error(loginResponse.statusCode);
      }

      return login(username, password);
    } on ClientException catch (e) {
      return AuthResult.exception(e);
    }
  }

  Future<UserInitialized> getUser(
      {bool updateRetentionBackstop = false}) async {
    var response = await _getAuthenticated('user',
        params: {'overrideBackstop': updateRetentionBackstop.toString()});

    if (response == null) {
      throw ErrorDescription('User not authenticated');
    }

    return UserInitialized.fromJson(response);
  }

  Future<SearchResult> search(String term) async => SearchResult.fromJson(
      await _getAuthenticated('search', params: {'term': term}));

  _getCardInitialized(dynamic data) {
    return CardInitialized.fromJson(data);
  }

  Future<List<Impression>> getPractice() async {
    final response =
        await _getAuthenticated('practice', params: {'count': '15'});
    final impressionsUnparsed = response['impressions'] as List<dynamic>;

    final impressionsParsed = impressionsUnparsed.map((impression) {
      final impressionType = impression['type'] as String;
      switch (impressionType) {
        case "KanaGuess":
          return KanaGuessImpression(_getCardInitialized(impression['card']));
        case "SenseGuess":
          return SenseGuessImpression(_getCardInitialized(impression['card']),
              impression['card']['speechPath']);
        case "NewCard":
          return NewCardImpression(_getCardInitialized(impression['card']));
        case "GeneratedSentenceGuess":
          return GeneratedSentenceGuessImpression(impression['kanaOnly'],
              impression['withKanji'], impression['sense']);
        case "GeneratedSentenceWithParticlesSelect":
          return MultiselectImpression(
              impression['correctOption'],
              impression['explanation'],
              impression['sense'],
              (impression['options'] as List<dynamic>)
                  .map((option) =>
                      Sentence(option['withKanji'], option['kanaOnly']))
                  .toList());
        default:
          throw Exception('Unknown impression type: $impressionType');
      }
    });

    return impressionsParsed.toList();
  }

  Future postImpression(Impression impression, bool success) async {
    int? cardId;

    if (impression is CardImpression) {
      cardId = impression.card.id;
    }

    final request = {
      'cardId': cardId,
      'success': success,
      'impressionType': impression.type.name
    };

    await _postJson('impressions', request);
  }

  Future<CardInitialized> postCard(Card card) async {
    final responseBody = await _postJson('cards', card.toJson());
    final createdCard = CardInitialized.fromJson(responseBody);
    return createdCard;
  }

  Future generateDemoCards() async {
    await _postJson('demoCards', {});
  }

  Future<bool> deleteCard(int cardId) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'cards/$cardId');

    var headers = await _getTokenHeadersOrThrow();
    headers.addEntries([contentTypeJsonHeader]);

    await _kotobatenClient.delete(url, headers: headers);

    return true;
  }

  Future<UserGoals> updateGoals(UserGoals goals) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'settings/goals', {
      'discoverDaily': goals.discoverDaily.toString(),
      'discoverWeekly': goals.discoverWeekly.toString(),
      'discoverMonthly': goals.discoverMonthly.toString()
    });

    var headers = await _getTokenHeadersOrThrow();
    headers.addEntries([contentTypeJsonHeader]);

    final response = await _kotobatenClient.post(url, headers: headers);
    final body = utf8.decode(response.bodyBytes);
    return UserGoals.fromJson(jsonDecode(body));
  }

  Future<CardsResponse> getCards(int page, int pageSize,
      {CardType? type}) async {
    final typeSerialized =
        type != null ? (type == CardType.grammar ? "Grammar" : "Word") : null;
    final responseJson = await _getAuthenticated('cards', params: {
      'pageSize': pageSize.toString(),
      'page': page.toString(),
      'type': typeSerialized
    });

    final result = CardsResponse.fromJson(responseJson);

    return result;
  }

  Future<UserCoreInitialized> updateRetentionBackstopMaxThreshold(
      int number) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'settings/dailyThreshold', {
      'retentionBackstopMaxThreshold': number.toString(),
    });

    var headers = await _getTokenHeadersOrThrow();
    headers.addEntries([contentTypeJsonHeader]);

    final response = await _kotobatenClient.post(url, headers: headers);
    final body = utf8.decode(response.bodyBytes);
    return UserCoreInitialized.fromJson(jsonDecode(body));
  }

  Future hideOnboarding() async {
    await _postJson('hideOnboarding', {});
  }

  Future<UserCoreInitialized> updateDisableAudio(bool disableAudio) async {
    final response = await _postJson('user', {'disableSounds': disableAudio});
    final body = utf8.decode(response.bodyBytes);
    return UserCoreInitialized.fromJson(jsonDecode(body));
  }

  Future<UserCoreInitialized> updateTimezone(
      String timezoneName, int utcOffsetHours) async {
    final response = await _postJson('user',
        {'utcOffsetHours': utcOffsetHours, 'timezoneName': timezoneName});

    return UserCoreInitialized.fromJson(response['user']);
  }

  Future<List<String>> getFurigana(String kanji) async {
    final url =
        _getUrl(_appConfiguration.apiRoot, 'furigana', {'kanji': kanji});
    final headers = await _getTokenHeadersOrThrow();
    final response = await _kotobatenClient.get(url, headers: headers);
    final body = utf8.decode(response.bodyBytes);
    return List<String>.from(jsonDecode(body));
  }

  Future<List<CardInitialized>> getWordSuggestions(int limit) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'suggestedCards',
        {'limit': limit.toString()});
    final headers = await _getTokenHeadersOrThrow();
    final response = await _kotobatenClient.get(url, headers: headers);
    final body = utf8.decode(response.bodyBytes);
    final responseJson = jsonDecode(body);
    final result = CardsResponse.fromJson(responseJson);

    return result.cards;
  }

  Future<dynamic> _getAuthenticated(String relativePath,
      {Map<String, dynamic>? params}) async {
    final url = _getUrl(_appConfiguration.apiRoot, relativePath, params);

    final response = await _kotobatenClient.get(url,
        headers: await _getTokenHeadersOrThrow());

    if (response.statusCode == 401) {
      authRepository.update(AuthModel.unauthenticated());
      return null;
    }

    final body = utf8.decode(response.bodyBytes);
    return jsonDecode(body);
  }

  Future<Map<String, String>> _getTokenHeadersOrThrow() async {
    final authModel = authRepository.current;
    final token = authModel.getCurrentToken();

    if (token == null) {
      throw Exception('User not authenticated, cannot call getUser');
    }
    return {'Authorization': 'Bearer $token'};
  }

  _getUrl(String authority, String unencodedPath,
          [Map<String, dynamic>? queryParameters]) =>
      _appConfiguration.isApiHttps
          ? Uri.https(authority, unencodedPath, queryParameters)
          : Uri.http(authority, unencodedPath, queryParameters);

  _postJson(String relativePath, Map<String, dynamic> requestBody) async {
    final url = _getUrl(_appConfiguration.apiRoot, relativePath);

    var headers = await _getTokenHeadersOrThrow();
    headers.addEntries([contentTypeJsonHeader]);

    final response = await _kotobatenClient.post(url,
        body: json.encode(requestBody), headers: headers);
    final body = utf8.decode(response.bodyBytes);
    return jsonDecode(body);
  }
}

@GenerateMocks([KotobatenApiService])
void main() {}
