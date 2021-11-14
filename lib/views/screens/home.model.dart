import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/user/user.dart';

part 'home.model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const HomeModel._();

  const factory HomeModel.initial() = Initial;
  const factory HomeModel.initializing() = Initializing;
  const factory HomeModel.requiresLogin() = RequiresLogin;
  const factory HomeModel.initialized(User user) = Initialized;
  const factory HomeModel.initializationError(String error) = InitializationError;
}
