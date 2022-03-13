import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes_external.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' as io show Platform;

final appConfigurationServiceProvider =
    Provider((ref) => AppConfigurationService());

final appConfigurationProvider = Provider(
    (ref) => ref.watch(appConfigurationServiceProvider).getConfiguration());

getPlatform() {
  if (kIsWeb) {
    return Platform.web;
  }

  if (io.Platform.isAndroid) {
    return Platform.android;
  }

  if (io.Platform.isIOS) {
    return Platform.ios;
  }

  if (io.Platform.isWindows) {
    return Platform.windows;
  }
}

class AppConfigurationService {
  AppConfiguration getConfiguration() {
    const isProduction = bool.fromEnvironment('dart.vm.product');
    const isWeb = kIsWeb;

    const isDevEndpoint = isWeb && !isProduction;
    const apiRoot = isDevEndpoint ? apiRootDev : apiRootProduction;
    const cookieDomain = isDevEndpoint ? 'localhost' : '.kotobaten.app';

    return AppConfiguration.initialized(
        apiRoot, !isDevEndpoint, getPlatform(), apiVersion, cookieDomain);
  }
}
