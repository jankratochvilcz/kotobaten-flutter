import 'dart:convert';

import 'package:http/http.dart';
import 'package:kotobaten/consts/http.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/models/impression.dart';
import 'package:kotobaten/models/user/statistics.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/serialization/requests/impressions_request.dart';
import 'package:kotobaten/services/serialization/responses/impressions_response.dart';
import 'package:kotobaten/services/serialization/responses/practice_response.dart';
import 'package:tuple/tuple.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

class KotobatenApiService {
  final AuthenticationService _authenticationService;
  final AppConfiguration _appConfiguration;

  KotobatenApiService(this._authenticationService, this._appConfiguration);

  Future<Tuple2<bool, String>> login(String username, String password) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'auth/login');

    try {
      final loginResponse = await Client().post(url, body: {
        'grant_type': 'password',
        'username': username,
        'password': password
      });

      final body = utf8.decode(loginResponse.bodyBytes);

      if (loginResponse.statusCode != 200) {
        return Tuple2(
            false,
            body.isNotEmpty
                ? body
                : loginResponse.reasonPhrase ??
                    loginResponse.statusCode.toString());
      }

      final token = jsonDecode(body)['access_token'] as String;
      return Tuple2(true, token);
    } on ClientException catch (e) {
      return Tuple2(false, e.message);
    }
  }

  Future<User> getUser() async =>
      InitializedUser.fromJson(await _getAuthenticated('user'));

  Future<List<Impression>> getImpressions() async => PracticeResponse.fromJson(
          await _getAuthenticated('practice', params: {'count': '15'}))
      .impressions;

  Future<Statistics> postImpression(Impression impression, bool success) async {
    final url = _getUrl(_appConfiguration.apiRoot, 'impressions');

    final request = ImpressionsRequest.initialized(
        impression.impressionType, impression.card.id, success, DateTime.now());

    var headers = await _getTokenHeadersOrThrow();
    headers.addEntries([contentTypeJsonHeader]);

    final response = await Client()
        .post(url, body: json.encode(request.toJson()), headers: headers);
    final body = utf8.decode(response.bodyBytes);
    final stats = ImpressionsResponse.fromJson(jsonDecode(body)).userStats;
    return stats;
  }

  Future<dynamic> _getAuthenticated(String relativePath,
      {Map<String, dynamic>? params}) async {
    final url = _getUrl(_appConfiguration.apiRoot, relativePath, params);

    final response =
        await Client().get(url, headers: await _getTokenHeadersOrThrow());

    final body = utf8.decode(response.bodyBytes);
    return jsonDecode(body);
  }

  Future<Map<String, String>> _getTokenHeadersOrThrow() async {
    final token = await _authenticationService.getToken();

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
}
