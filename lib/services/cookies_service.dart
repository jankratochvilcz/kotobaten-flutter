import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/cookies_service_dummy.dart'
    if (dart.library.html) 'package:kotobaten/services/cookies_service_web.dart'
    as cookies_service;

final cookiesServiceProvider =
    Provider((ref) => cookies_service.CookiesService());
