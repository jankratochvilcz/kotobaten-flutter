// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthResultTearOff {
  const _$AuthResultTearOff();

  AuthResultError error(int errorCode) {
    return AuthResultError(
      errorCode,
    );
  }

  AuthResultSuccess success(String token) {
    return AuthResultSuccess(
      token,
    );
  }

  AuthResultException exception(ClientException exception) {
    return AuthResultException(
      exception,
    );
  }
}

/// @nodoc
const $AuthResult = _$AuthResultTearOff();

/// @nodoc
mixin _$AuthResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) error,
    required TResult Function(String token) success,
    required TResult Function(ClientException exception) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthResultError value) error,
    required TResult Function(AuthResultSuccess value) success,
    required TResult Function(AuthResultException value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResultCopyWith<$Res> {
  factory $AuthResultCopyWith(
          AuthResult value, $Res Function(AuthResult) then) =
      _$AuthResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthResultCopyWithImpl<$Res> implements $AuthResultCopyWith<$Res> {
  _$AuthResultCopyWithImpl(this._value, this._then);

  final AuthResult _value;
  // ignore: unused_field
  final $Res Function(AuthResult) _then;
}

/// @nodoc
abstract class $AuthResultErrorCopyWith<$Res> {
  factory $AuthResultErrorCopyWith(
          AuthResultError value, $Res Function(AuthResultError) then) =
      _$AuthResultErrorCopyWithImpl<$Res>;
  $Res call({int errorCode});
}

/// @nodoc
class _$AuthResultErrorCopyWithImpl<$Res> extends _$AuthResultCopyWithImpl<$Res>
    implements $AuthResultErrorCopyWith<$Res> {
  _$AuthResultErrorCopyWithImpl(
      AuthResultError _value, $Res Function(AuthResultError) _then)
      : super(_value, (v) => _then(v as AuthResultError));

  @override
  AuthResultError get _value => super._value as AuthResultError;

  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(AuthResultError(
      errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AuthResultError implements AuthResultError {
  _$AuthResultError(this.errorCode);

  @override
  final int errorCode;

  @override
  String toString() {
    return 'AuthResult.error(errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResultError &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorCode));

  @JsonKey(ignore: true)
  @override
  $AuthResultErrorCopyWith<AuthResultError> get copyWith =>
      _$AuthResultErrorCopyWithImpl<AuthResultError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) error,
    required TResult Function(String token) success,
    required TResult Function(ClientException exception) exception,
  }) {
    return error(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
  }) {
    return error?.call(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthResultError value) error,
    required TResult Function(AuthResultSuccess value) success,
    required TResult Function(AuthResultException value) exception,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthResultError implements AuthResult {
  factory AuthResultError(int errorCode) = _$AuthResultError;

  int get errorCode;
  @JsonKey(ignore: true)
  $AuthResultErrorCopyWith<AuthResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResultSuccessCopyWith<$Res> {
  factory $AuthResultSuccessCopyWith(
          AuthResultSuccess value, $Res Function(AuthResultSuccess) then) =
      _$AuthResultSuccessCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$AuthResultSuccessCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res>
    implements $AuthResultSuccessCopyWith<$Res> {
  _$AuthResultSuccessCopyWithImpl(
      AuthResultSuccess _value, $Res Function(AuthResultSuccess) _then)
      : super(_value, (v) => _then(v as AuthResultSuccess));

  @override
  AuthResultSuccess get _value => super._value as AuthResultSuccess;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(AuthResultSuccess(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthResultSuccess implements AuthResultSuccess {
  _$AuthResultSuccess(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthResult.success(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResultSuccess &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  $AuthResultSuccessCopyWith<AuthResultSuccess> get copyWith =>
      _$AuthResultSuccessCopyWithImpl<AuthResultSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) error,
    required TResult Function(String token) success,
    required TResult Function(ClientException exception) exception,
  }) {
    return success(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
  }) {
    return success?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthResultError value) error,
    required TResult Function(AuthResultSuccess value) success,
    required TResult Function(AuthResultException value) exception,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthResultSuccess implements AuthResult {
  factory AuthResultSuccess(String token) = _$AuthResultSuccess;

  String get token;
  @JsonKey(ignore: true)
  $AuthResultSuccessCopyWith<AuthResultSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResultExceptionCopyWith<$Res> {
  factory $AuthResultExceptionCopyWith(
          AuthResultException value, $Res Function(AuthResultException) then) =
      _$AuthResultExceptionCopyWithImpl<$Res>;
  $Res call({ClientException exception});
}

/// @nodoc
class _$AuthResultExceptionCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res>
    implements $AuthResultExceptionCopyWith<$Res> {
  _$AuthResultExceptionCopyWithImpl(
      AuthResultException _value, $Res Function(AuthResultException) _then)
      : super(_value, (v) => _then(v as AuthResultException));

  @override
  AuthResultException get _value => super._value as AuthResultException;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(AuthResultException(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ClientException,
    ));
  }
}

/// @nodoc

class _$AuthResultException implements AuthResultException {
  _$AuthResultException(this.exception);

  @override
  final ClientException exception;

  @override
  String toString() {
    return 'AuthResult.exception(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResultException &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $AuthResultExceptionCopyWith<AuthResultException> get copyWith =>
      _$AuthResultExceptionCopyWithImpl<AuthResultException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) error,
    required TResult Function(String token) success,
    required TResult Function(ClientException exception) exception,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? error,
    TResult Function(String token)? success,
    TResult Function(ClientException exception)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthResultError value) error,
    required TResult Function(AuthResultSuccess value) success,
    required TResult Function(AuthResultException value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthResultError value)? error,
    TResult Function(AuthResultSuccess value)? success,
    TResult Function(AuthResultException value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class AuthResultException implements AuthResult {
  factory AuthResultException(ClientException exception) =
      _$AuthResultException;

  ClientException get exception;
  @JsonKey(ignore: true)
  $AuthResultExceptionCopyWith<AuthResultException> get copyWith =>
      throw _privateConstructorUsedError;
}
