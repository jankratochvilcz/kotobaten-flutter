import 'package:kotobaten/consts/routes_external.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AppConfigurationService {
  AppConfiguration getConfiguration() {
    const isProduction = bool.fromEnvironment('dart.vm.product');
    const isWeb = kIsWeb;

    const isDevEndpoint = isWeb && !isProduction;
    const apiRoot = isDevEndpoint ? apiRootDev : apiRootProduction;

    return AppConfiguration.initialized(apiRoot, !isDevEndpoint);
  }
}
