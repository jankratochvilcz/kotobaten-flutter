import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  factory AuthModel.initial() = AuthModelInitial;
  factory AuthModel.unauthenticated() = AuthModelUnauthenticated;
  factory AuthModel.authenticating() = AuthModelAuthenticating;
  factory AuthModel.authenticated(String token) = AuthModelAuthenticated;
  factory AuthModel.authenticationError(String message) =
      AuthModelAuthenticationError;
}
