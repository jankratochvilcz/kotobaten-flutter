import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_configuration.freezed.dart';

@freezed
class PushConfiguration with _$PushConfiguration {
  factory PushConfiguration(String connectionString, String namespace) =
      PushConfigurationInitialized;
}
