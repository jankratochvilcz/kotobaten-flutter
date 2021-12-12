import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_configuration.freezed.dart';

@freezed
class AppConfiguration with _$AppConfiguration {
  factory AppConfiguration.initialized(String apiRoot, bool isApiHttps) =
      AppConfigurationInitialized;
}