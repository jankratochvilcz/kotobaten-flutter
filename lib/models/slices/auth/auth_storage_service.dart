import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authStorageServiceProvider =
    Provider<AuthStorageService>((ref) => AuthStorageService());

class AuthStorageService {
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

  Future deleteToken() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.remove(_tokenKey);
  }
}
