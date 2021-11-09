import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.model.freezed.dart';

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  const factory LoginModel.initial() = Initial;
  const factory LoginModel.loading() = Loading;
  const factory LoginModel.error(String error) = Error;
  const factory LoginModel.success(String token) = Success;
}
