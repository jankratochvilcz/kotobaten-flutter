// Only imported conditionally if the library is available in the first place.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:kotobaten/services/cookies_service_base.dart';

class CookiesService implements CookiesServiceBase {
  @override
  Future<bool> setCookie(String key, String value, String domain) async {
    await window.cookieStore?.set("authToken", true.toString());
    return true;
  }
}
