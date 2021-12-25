import 'package:kotobaten/services/cookies_service_base.dart';

class CookiesService implements CookiesServiceBase {
  @override
  Future<bool> setCookie(String key, String value, String domain) =>
      Future.value(false);
}
