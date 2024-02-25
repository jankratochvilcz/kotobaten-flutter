import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_core.freezed.dart';
part 'user_core.g.dart';

@freezed
class UserCore with _$UserCore {
  factory UserCore.initialized(
      int id,
      String email,
      int retentionBackstopMaxThreshold,
      bool disableSounds,
      String timezoneName,
      int utcOffsetHours) = UserCoreInitialized;

  factory UserCore.fromJson(Map<String, dynamic> json) =>
      _$UserCoreFromJson(json);
}
