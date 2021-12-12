import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/user/user.dart';

part 'profile.model.freezed.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel.initial() = Initial;
  const factory ProfileModel.initialized(InitializedUser user) = Initialized;
  const factory ProfileModel.notLoggedIn() = NotLoggedIn;
}
