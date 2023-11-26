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
abstract class _$$AuthResultErrorImplCopyWith<$Res> {
  factory _$$AuthResultErrorImplCopyWith(_$AuthResultErrorImpl value,
          $Res Function(_$AuthResultErrorImpl) then) =
      __$$AuthResultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int errorCode});
}

/// @nodoc
class __$$AuthResultErrorImplCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultErrorImpl>
    implements _$$AuthResultErrorImplCopyWith<$Res> {
  __$$AuthResultErrorImplCopyWithImpl(
      _$AuthResultErrorImpl _value, $Res Function(_$AuthResultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
  }) {
    return _then(_$AuthResultErrorImpl(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AuthResultErrorImpl implements AuthResultError {
  _$AuthResultErrorImpl(this.errorCode);

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
            other is _$AuthResultErrorImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultErrorImplCopyWith<_$AuthResultErrorImpl> get copyWith =>
      __$$AuthResultErrorImplCopyWithImpl<_$AuthResultErrorImpl>(
          this, _$identity);

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
  factory AuthResultError(final int errorCode) = _$AuthResultErrorImpl;

  int get errorCode;
  @JsonKey(ignore: true)
  _$$AuthResultErrorImplCopyWith<_$AuthResultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResultSuccessImplCopyWith<$Res> {
  factory _$$AuthResultSuccessImplCopyWith(_$AuthResultSuccessImpl value,
          $Res Function(_$AuthResultSuccessImpl) then) =
      __$$AuthResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthResultSuccessImplCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultSuccessImpl>
    implements _$$AuthResultSuccessImplCopyWith<$Res> {
  __$$AuthResultSuccessImplCopyWithImpl(_$AuthResultSuccessImpl _value,
      $Res Function(_$AuthResultSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthResultSuccessImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthResultSuccessImpl implements AuthResultSuccess {
  _$AuthResultSuccessImpl(this.token);

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
            other is _$AuthResultSuccessImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultSuccessImplCopyWith<_$AuthResultSuccessImpl> get copyWith =>
      __$$AuthResultSuccessImplCopyWithImpl<_$AuthResultSuccessImpl>(
          this, _$identity);

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
  factory AuthResultSuccess(final String token) = _$AuthResultSuccessImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$AuthResultSuccessImplCopyWith<_$AuthResultSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthResultExceptionImplCopyWith<$Res> {
  factory _$$AuthResultExceptionImplCopyWith(_$AuthResultExceptionImpl value,
          $Res Function(_$AuthResultExceptionImpl) then) =
      __$$AuthResultExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientException exception});
}

/// @nodoc
class __$$AuthResultExceptionImplCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$AuthResultExceptionImpl>
    implements _$$AuthResultExceptionImplCopyWith<$Res> {
  __$$AuthResultExceptionImplCopyWithImpl(_$AuthResultExceptionImpl _value,
      $Res Function(_$AuthResultExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AuthResultExceptionImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ClientException,
    ));
  }
}

/// @nodoc

class _$AuthResultExceptionImpl implements AuthResultException {
  _$AuthResultExceptionImpl(this.exception);

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
            other is _$AuthResultExceptionImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResultExceptionImplCopyWith<_$AuthResultExceptionImpl> get copyWith =>
      __$$AuthResultExceptionImplCopyWithImpl<_$AuthResultExceptionImpl>(
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
      _$AuthResultExceptionImpl;

  ClientException get exception;
  @JsonKey(ignore: true)
  _$$AuthResultExceptionImplCopyWith<_$AuthResultExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
