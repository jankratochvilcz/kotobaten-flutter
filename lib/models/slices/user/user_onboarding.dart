import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_onboarding.freezed.dart';
part 'user_onboarding.g.dart';

@freezed
class UserOnboarding with _$UserOnboarding {
  factory UserOnboarding(bool onboardingHidden) = UserOnboardingInitialized;

  factory UserOnboarding.fromJson(Map<String, dynamic> json) =>
      _$UserOnboardingFromJson(json);
}
