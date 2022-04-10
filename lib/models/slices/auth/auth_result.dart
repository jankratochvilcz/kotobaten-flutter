import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'auth_result.freezed.dart';

@freezed
class AuthResult with _$AuthResult {
  factory AuthResult.error(int errorCode) = AuthResultError;
  factory AuthResult.success(String token) = AuthResultSuccess;
  factory AuthResult.exception(ClientException exception) = AuthResultException;
}
