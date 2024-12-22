// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(AuthResult result) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(AuthResult result)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthModelInitial value) initial,
    required TResult Function(AuthModelUnauthenticated value) unauthenticated,
    required TResult Function(AuthModelAuthenticating value) authenticating,
    required TResult Function(AuthModelAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthModelInitial value)? initial,
    TResult? Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult? Function(AuthModelAuthenticating value)? authenticating,
    TResult? Function(AuthModelAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthModelInitialImplCopyWith<$Res> {
  factory _$$AuthModelInitialImplCopyWith(_$AuthModelInitialImpl value,
          $Res Function(_$AuthModelInitialImpl) then) =
      __$$AuthModelInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelInitialImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelInitialImpl>
    implements _$$AuthModelInitialImplCopyWith<$Res> {
  __$$AuthModelInitialImplCopyWithImpl(_$AuthModelInitialImpl _value,
      $Res Function(_$AuthModelInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthModelInitialImpl implements AuthModelInitial {
  _$AuthModelInitialImpl();

  @override
  String toString() {
    return 'AuthModel.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthModelInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(AuthResult result) authenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(AuthResult result)? authenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthModelInitial value) initial,
    required TResult Function(AuthModelUnauthenticated value) unauthenticated,
    required TResult Function(AuthModelAuthenticating value) authenticating,
    required TResult Function(AuthModelAuthenticated value) authenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthModelInitial value)? initial,
    TResult? Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult? Function(AuthModelAuthenticating value)? authenticating,
    TResult? Function(AuthModelAuthenticated value)? authenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthModelInitial implements AuthModel {
  factory AuthModelInitial() = _$AuthModelInitialImpl;
}

/// @nodoc
abstract class _$$AuthModelUnauthenticatedImplCopyWith<$Res> {
  factory _$$AuthModelUnauthenticatedImplCopyWith(
          _$AuthModelUnauthenticatedImpl value,
          $Res Function(_$AuthModelUnauthenticatedImpl) then) =
      __$$AuthModelUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelUnauthenticatedImpl>
    implements _$$AuthModelUnauthenticatedImplCopyWith<$Res> {
  __$$AuthModelUnauthenticatedImplCopyWithImpl(
      _$AuthModelUnauthenticatedImpl _value,
      $Res Function(_$AuthModelUnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthModelUnauthenticatedImpl implements AuthModelUnauthenticated {
  _$AuthModelUnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthModel.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelUnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(AuthResult result) authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(AuthResult result)? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthModelInitial value) initial,
    required TResult Function(AuthModelUnauthenticated value) unauthenticated,
    required TResult Function(AuthModelAuthenticating value) authenticating,
    required TResult Function(AuthModelAuthenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthModelInitial value)? initial,
    TResult? Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult? Function(AuthModelAuthenticating value)? authenticating,
    TResult? Function(AuthModelAuthenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthModelUnauthenticated implements AuthModel {
  factory AuthModelUnauthenticated() = _$AuthModelUnauthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthModelAuthenticatingImplCopyWith<$Res> {
  factory _$$AuthModelAuthenticatingImplCopyWith(
          _$AuthModelAuthenticatingImpl value,
          $Res Function(_$AuthModelAuthenticatingImpl) then) =
      __$$AuthModelAuthenticatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelAuthenticatingImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelAuthenticatingImpl>
    implements _$$AuthModelAuthenticatingImplCopyWith<$Res> {
  __$$AuthModelAuthenticatingImplCopyWithImpl(
      _$AuthModelAuthenticatingImpl _value,
      $Res Function(_$AuthModelAuthenticatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthModelAuthenticatingImpl implements AuthModelAuthenticating {
  _$AuthModelAuthenticatingImpl();

  @override
  String toString() {
    return 'AuthModel.authenticating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelAuthenticatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(AuthResult result) authenticated,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(AuthResult result)? authenticated,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthModelInitial value) initial,
    required TResult Function(AuthModelUnauthenticated value) unauthenticated,
    required TResult Function(AuthModelAuthenticating value) authenticating,
    required TResult Function(AuthModelAuthenticated value) authenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthModelInitial value)? initial,
    TResult? Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult? Function(AuthModelAuthenticating value)? authenticating,
    TResult? Function(AuthModelAuthenticated value)? authenticated,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class AuthModelAuthenticating implements AuthModel {
  factory AuthModelAuthenticating() = _$AuthModelAuthenticatingImpl;
}

/// @nodoc
abstract class _$$AuthModelAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthModelAuthenticatedImplCopyWith(
          _$AuthModelAuthenticatedImpl value,
          $Res Function(_$AuthModelAuthenticatedImpl) then) =
      __$$AuthModelAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResult result});

  $AuthResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$AuthModelAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelAuthenticatedImpl>
    implements _$$AuthModelAuthenticatedImplCopyWith<$Res> {
  __$$AuthModelAuthenticatedImplCopyWithImpl(
      _$AuthModelAuthenticatedImpl _value,
      $Res Function(_$AuthModelAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$AuthModelAuthenticatedImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthResult,
    ));
  }

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthResultCopyWith<$Res> get result {
    return $AuthResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$AuthModelAuthenticatedImpl implements AuthModelAuthenticated {
  _$AuthModelAuthenticatedImpl(this.result);

  @override
  final AuthResult result;

  @override
  String toString() {
    return 'AuthModel.authenticated(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelAuthenticatedImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelAuthenticatedImplCopyWith<_$AuthModelAuthenticatedImpl>
      get copyWith => __$$AuthModelAuthenticatedImplCopyWithImpl<
          _$AuthModelAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(AuthResult result) authenticated,
  }) {
    return authenticated(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticating,
    TResult? Function(AuthResult result)? authenticated,
  }) {
    return authenticated?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthModelInitial value) initial,
    required TResult Function(AuthModelUnauthenticated value) unauthenticated,
    required TResult Function(AuthModelAuthenticating value) authenticating,
    required TResult Function(AuthModelAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthModelInitial value)? initial,
    TResult? Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult? Function(AuthModelAuthenticating value)? authenticating,
    TResult? Function(AuthModelAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthModelAuthenticated implements AuthModel {
  factory AuthModelAuthenticated(final AuthResult result) =
      _$AuthModelAuthenticatedImpl;

  AuthResult get result;

  /// Create a copy of AuthModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthModelAuthenticatedImplCopyWith<_$AuthModelAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
