// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(int errorCode)? error,
    TResult? Function(String token)? success,
    TResult? Function(ClientException exception)? exception,
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
    TResult? Function(AuthResultError value)? error,
    TResult? Function(AuthResultSuccess value)? success,
    TResult? Function(AuthResultException value)? exception,
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
      _$AuthResultCopyWithImpl<$Res, AuthResult>;
}

/// @nodoc
class _$AuthResultCopyWithImpl<$Res, $Val extends AuthResult>
    implements $AuthResultCopyWith<$Res> {
  _$AuthResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthResultErrorCopyWith<$Res> {
  factory _$$AuthResultErrorCopyWith(
          _$AuthResultError value, $Res Function(_$AuthResultError) then) =
      __$$AuthResultErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({int errorCode});
}

/// @nodoc
class __$$AuthResultErrorCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultError>
    implements _$$AuthResultErrorCopyWith<$Res> {
  __$$AuthResultErrorCopyWithImpl(
      _$AuthResultError _value, $Res Function(_$AuthResultError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
  }) {
    return _then(_$AuthResultError(
      null == errorCode
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
            other is _$AuthResultError &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultErrorCopyWith<_$AuthResultError> get copyWith =>
      __$$AuthResultErrorCopyWithImpl<_$AuthResultError>(this, _$identity);

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
    TResult? Function(int errorCode)? error,
    TResult? Function(String token)? success,
    TResult? Function(ClientException exception)? exception,
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
    TResult? Function(AuthResultError value)? error,
    TResult? Function(AuthResultSuccess value)? success,
    TResult? Function(AuthResultException value)? exception,
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
  factory AuthResultError(final int errorCode) = _$AuthResultError;

  int get errorCode;
  @JsonKey(ignore: true)
  _$$AuthResultErrorCopyWith<_$AuthResultError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResultSuccessCopyWith<$Res> {
  factory _$$AuthResultSuccessCopyWith(
          _$AuthResultSuccess value, $Res Function(_$AuthResultSuccess) then) =
      __$$AuthResultSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthResultSuccessCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultSuccess>
    implements _$$AuthResultSuccessCopyWith<$Res> {
  __$$AuthResultSuccessCopyWithImpl(
      _$AuthResultSuccess _value, $Res Function(_$AuthResultSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthResultSuccess(
      null == token
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
            other is _$AuthResultSuccess &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultSuccessCopyWith<_$AuthResultSuccess> get copyWith =>
      __$$AuthResultSuccessCopyWithImpl<_$AuthResultSuccess>(this, _$identity);

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
    TResult? Function(int errorCode)? error,
    TResult? Function(String token)? success,
    TResult? Function(ClientException exception)? exception,
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
    TResult? Function(AuthResultError value)? error,
    TResult? Function(AuthResultSuccess value)? success,
    TResult? Function(AuthResultException value)? exception,
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
  factory AuthResultSuccess(final String token) = _$AuthResultSuccess;

  String get token;
  @JsonKey(ignore: true)
  _$$AuthResultSuccessCopyWith<_$AuthResultSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResultExceptionCopyWith<$Res> {
  factory _$$AuthResultExceptionCopyWith(_$AuthResultException value,
          $Res Function(_$AuthResultException) then) =
      __$$AuthResultExceptionCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientException exception});
}

/// @nodoc
class __$$AuthResultExceptionCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultException>
    implements _$$AuthResultExceptionCopyWith<$Res> {
  __$$AuthResultExceptionCopyWithImpl(
      _$AuthResultException _value, $Res Function(_$AuthResultException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AuthResultException(
      null == exception
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
            other is _$AuthResultException &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultExceptionCopyWith<_$AuthResultException> get copyWith =>
      __$$AuthResultExceptionCopyWithImpl<_$AuthResultException>(
          this, _$identity);

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
    TResult? Function(int errorCode)? error,
    TResult? Function(String token)? success,
    TResult? Function(ClientException exception)? exception,
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
    TResult? Function(AuthResultError value)? error,
    TResult? Function(AuthResultSuccess value)? success,
    TResult? Function(AuthResultException value)? exception,
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
  factory AuthResultException(final ClientException exception) =
      _$AuthResultException;

  ClientException get exception;
  @JsonKey(ignore: true)
  _$$AuthResultExceptionCopyWith<_$AuthResultException> get copyWith =>
      throw _privateConstructorUsedError;
}
