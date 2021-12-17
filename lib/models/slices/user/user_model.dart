import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/user/user.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();

  factory UserModel.initial() = UserModelInitial;
  factory UserModel.loadingInitial() = UserModelLoadingInitial;
  factory UserModel.initialized(UserInitialized user,
      [@Default(false) bool refreshing]) = UserModelInitialized;
}
