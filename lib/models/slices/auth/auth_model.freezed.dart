// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthModelTearOff {
  const _$AuthModelTearOff();

  AuthModelInitial initial() {
    return AuthModelInitial();
  }

  AuthModelUnauthenticated unauthenticated() {
    return AuthModelUnauthenticated();
  }

  AuthModelAuthenticating authenticating() {
    return AuthModelAuthenticating();
  }

  AuthModelAuthenticated authenticated(AuthResult result) {
    return AuthModelAuthenticated(
      result,
    );
  }
}

/// @nodoc
const $AuthModel = _$AuthModelTearOff();

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
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
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
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
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
      _$AuthModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res> implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  final AuthModel _value;
  // ignore: unused_field
  final $Res Function(AuthModel) _then;
}

/// @nodoc
abstract class $AuthModelInitialCopyWith<$Res> {
  factory $AuthModelInitialCopyWith(
          AuthModelInitial value, $Res Function(AuthModelInitial) then) =
      _$AuthModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthModelInitialCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelInitialCopyWith<$Res> {
  _$AuthModelInitialCopyWithImpl(
      AuthModelInitial _value, $Res Function(AuthModelInitial) _then)
      : super(_value, (v) => _then(v as AuthModelInitial));

  @override
  AuthModelInitial get _value => super._value as AuthModelInitial;
}

/// @nodoc

class _$AuthModelInitial implements AuthModelInitial {
  _$AuthModelInitial();

  @override
  String toString() {
    return 'AuthModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthModelInitial);
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
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
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
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
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
  factory AuthModelInitial() = _$AuthModelInitial;
}

/// @nodoc
abstract class $AuthModelUnauthenticatedCopyWith<$Res> {
  factory $AuthModelUnauthenticatedCopyWith(AuthModelUnauthenticated value,
          $Res Function(AuthModelUnauthenticated) then) =
      _$AuthModelUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthModelUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelUnauthenticatedCopyWith<$Res> {
  _$AuthModelUnauthenticatedCopyWithImpl(AuthModelUnauthenticated _value,
      $Res Function(AuthModelUnauthenticated) _then)
      : super(_value, (v) => _then(v as AuthModelUnauthenticated));

  @override
  AuthModelUnauthenticated get _value =>
      super._value as AuthModelUnauthenticated;
}

/// @nodoc

class _$AuthModelUnauthenticated implements AuthModelUnauthenticated {
  _$AuthModelUnauthenticated();

  @override
  String toString() {
    return 'AuthModel.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthModelUnauthenticated);
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
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
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
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
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
  factory AuthModelUnauthenticated() = _$AuthModelUnauthenticated;
}

/// @nodoc
abstract class $AuthModelAuthenticatingCopyWith<$Res> {
  factory $AuthModelAuthenticatingCopyWith(AuthModelAuthenticating value,
          $Res Function(AuthModelAuthenticating) then) =
      _$AuthModelAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthModelAuthenticatingCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelAuthenticatingCopyWith<$Res> {
  _$AuthModelAuthenticatingCopyWithImpl(AuthModelAuthenticating _value,
      $Res Function(AuthModelAuthenticating) _then)
      : super(_value, (v) => _then(v as AuthModelAuthenticating));

  @override
  AuthModelAuthenticating get _value => super._value as AuthModelAuthenticating;
}

/// @nodoc

class _$AuthModelAuthenticating implements AuthModelAuthenticating {
  _$AuthModelAuthenticating();

  @override
  String toString() {
    return 'AuthModel.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthModelAuthenticating);
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
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
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
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
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
  factory AuthModelAuthenticating() = _$AuthModelAuthenticating;
}

/// @nodoc
abstract class $AuthModelAuthenticatedCopyWith<$Res> {
  factory $AuthModelAuthenticatedCopyWith(AuthModelAuthenticated value,
          $Res Function(AuthModelAuthenticated) then) =
      _$AuthModelAuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthResult result});

  $AuthResultCopyWith<$Res> get result;
}

/// @nodoc
class _$AuthModelAuthenticatedCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelAuthenticatedCopyWith<$Res> {
  _$AuthModelAuthenticatedCopyWithImpl(AuthModelAuthenticated _value,
      $Res Function(AuthModelAuthenticated) _then)
      : super(_value, (v) => _then(v as AuthModelAuthenticated));

  @override
  AuthModelAuthenticated get _value => super._value as AuthModelAuthenticated;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(AuthModelAuthenticated(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthResult,
    ));
  }

  @override
  $AuthResultCopyWith<$Res> get result {
    return $AuthResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$AuthModelAuthenticated implements AuthModelAuthenticated {
  _$AuthModelAuthenticated(this.result);

  @override
  final AuthResult result;

  @override
  String toString() {
    return 'AuthModel.authenticated(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthModelAuthenticated &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $AuthModelAuthenticatedCopyWith<AuthModelAuthenticated> get copyWith =>
      _$AuthModelAuthenticatedCopyWithImpl<AuthModelAuthenticated>(
          this, _$identity);

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
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(AuthResult result)? authenticated,
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
    TResult Function(AuthModelInitial value)? initial,
    TResult Function(AuthModelUnauthenticated value)? unauthenticated,
    TResult Function(AuthModelAuthenticating value)? authenticating,
    TResult Function(AuthModelAuthenticated value)? authenticated,
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
  factory AuthModelAuthenticated(AuthResult result) = _$AuthModelAuthenticated;

  AuthResult get result;
  @JsonKey(ignore: true)
  $AuthModelAuthenticatedCopyWith<AuthModelAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
