import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes_external.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

final appConfigurationServiceProvider =
    Provider((ref) => AppConfigurationService());

final appConfigurationProvider = Provider(
    (ref) => ref.watch(appConfigurationServiceProvider).getConfiguration());

class AppConfigurationService {
  AppConfiguration getConfiguration() {
    const isProduction = bool.fromEnvironment('dart.vm.product');
    const isWeb = kIsWeb;

    const isDevEndpoint = isWeb && !isProduction;
    const apiRoot = isDevEndpoint ? apiRootDev : apiRootProduction;
    const cookieDomain = isDevEndpoint ? 'localhost' : '.kotobaten.app';

    const mixpanelToken =
        isProduction ? "78354231f937435ced022a399aadd2d4" : null;

    return AppConfiguration.initialized(
        apiRoot,
        !isDevEndpoint,
        isWeb ? DeviceType.web : DeviceType.mobile,
        apiVersion,
        cookieDomain,
        mixpanelToken);
  }
}
