import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_configuration.freezed.dart';

enum Platform { web, android, ios, windows, unknown }

@freezed
class AppConfiguration with _$AppConfiguration {
  factory AppConfiguration.initialized(
      String apiRoot,
      bool isApiHttps,
      Platform platform,
      String apiVersion,
      String cookieDomain) = AppConfigurationInitialized;
}
