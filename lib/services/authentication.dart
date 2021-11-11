import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService {
  static const _tokenKey = 'AuthenticationToken';

  Future<String?> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_tokenKey);
  }

  Future<bool> hasToken() async => await getToken() != null;

  Future setToken(String token) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_tokenKey, token);
  }
}