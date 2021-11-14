import 'dart:convert';

import 'package:http/http.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:tuple/tuple.dart';

const _apiRoot = 'kotobaten-api.azurewebsites.net';

class KotobatenApiService {
  final AuthenticationService _authenticationService;

  KotobatenApiService(this._authenticationService);

  Future<Tuple2<bool, String>> login(String username, String password) async {
    final url = Uri.https(_apiRoot, 'auth/login');
    final loginResponse = await Client().post(url, body: {
      'grant_type': 'password',
      'username': username,
      'password': password
    });

    final body = utf8.decode(loginResponse.bodyBytes);

    if (loginResponse.statusCode != 200) {
      return Tuple2(
          false, body.isNotEmpty ? body : loginResponse.statusCode.toString());
    }

    final token = jsonDecode(body)['access_token'] as String;
    return Tuple2(true, token);
  }

  Future<User> getUser() async {
    final token = await _authenticationService.getToken();

    if (token == null) {
      throw Exception('User not authenticated, cannot call getUser');
    }

    final url = Uri.https(_apiRoot, 'user');
    final userResponse = await Client().get(url, headers: {
      'Authorization': 'Bearer $token'
    });

    final body = utf8.decode(userResponse.bodyBytes);

    if(userResponse.statusCode != 200) {
      throw Exception('Error ${userResponse.statusCode} while requesting user $body');
    }

    final user = InitializedUser.fromJson(jsonDecode(body));
    return user;
  }
}
