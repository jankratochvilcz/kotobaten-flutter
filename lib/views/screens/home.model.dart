import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const HomeModel._();

  const factory HomeModel.initial() = Initial;
  const factory HomeModel.requiresLogin() = RequiresLogin;
}
