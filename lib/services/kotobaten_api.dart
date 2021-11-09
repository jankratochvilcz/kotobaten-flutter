import 'dart:convert';

import 'package:http/http.dart';
import 'package:tuple/tuple.dart';

const _apiRoot = 'kotobaten-api.azurewebsites.net';

class KotobatenApiService {
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
}
