import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/auth/auth_result.dart';

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel.initial() = AuthModelInitial;
  factory AuthModel.unauthenticated() = AuthModelUnauthenticated;
  factory AuthModel.authenticating() = AuthModelAuthenticating;
  factory AuthModel.authenticated(AuthResult result) = AuthModelAuthenticated;
}
