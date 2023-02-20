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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$AuthModelInitialCopyWith<$Res> {
  factory _$$AuthModelInitialCopyWith(
          _$AuthModelInitial value, $Res Function(_$AuthModelInitial) then) =
      __$$AuthModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelInitialCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelInitial>
    implements _$$AuthModelInitialCopyWith<$Res> {
  __$$AuthModelInitialCopyWithImpl(
      _$AuthModelInitial _value, $Res Function(_$AuthModelInitial) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$AuthModelInitial);
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
  factory AuthModelInitial() = _$AuthModelInitial;
}

/// @nodoc
abstract class _$$AuthModelUnauthenticatedCopyWith<$Res> {
  factory _$$AuthModelUnauthenticatedCopyWith(_$AuthModelUnauthenticated value,
          $Res Function(_$AuthModelUnauthenticated) then) =
      __$$AuthModelUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelUnauthenticated>
    implements _$$AuthModelUnauthenticatedCopyWith<$Res> {
  __$$AuthModelUnauthenticatedCopyWithImpl(_$AuthModelUnauthenticated _value,
      $Res Function(_$AuthModelUnauthenticated) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType &&
            other is _$AuthModelUnauthenticated);
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
  factory AuthModelUnauthenticated() = _$AuthModelUnauthenticated;
}

/// @nodoc
abstract class _$$AuthModelAuthenticatingCopyWith<$Res> {
  factory _$$AuthModelAuthenticatingCopyWith(_$AuthModelAuthenticating value,
          $Res Function(_$AuthModelAuthenticating) then) =
      __$$AuthModelAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelAuthenticatingCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelAuthenticating>
    implements _$$AuthModelAuthenticatingCopyWith<$Res> {
  __$$AuthModelAuthenticatingCopyWithImpl(_$AuthModelAuthenticating _value,
      $Res Function(_$AuthModelAuthenticating) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType &&
            other is _$AuthModelAuthenticating);
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
  factory AuthModelAuthenticating() = _$AuthModelAuthenticating;
}

/// @nodoc
abstract class _$$AuthModelAuthenticatedCopyWith<$Res> {
  factory _$$AuthModelAuthenticatedCopyWith(_$AuthModelAuthenticated value,
          $Res Function(_$AuthModelAuthenticated) then) =
      __$$AuthModelAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResult result});

  $AuthResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$AuthModelAuthenticatedCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelAuthenticated>
    implements _$$AuthModelAuthenticatedCopyWith<$Res> {
  __$$AuthModelAuthenticatedCopyWithImpl(_$AuthModelAuthenticated _value,
      $Res Function(_$AuthModelAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$AuthModelAuthenticated(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AuthResult,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            other is _$AuthModelAuthenticated &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelAuthenticatedCopyWith<_$AuthModelAuthenticated> get copyWith =>
      __$$AuthModelAuthenticatedCopyWithImpl<_$AuthModelAuthenticated>(
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
      _$AuthModelAuthenticated;

  AuthResult get result;
  @JsonKey(ignore: true)
  _$$AuthModelAuthenticatedCopyWith<_$AuthModelAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
