// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  UserModelInitial initial() {
    return UserModelInitial();
  }

  UserModelLoadingInitial loadingInitial() {
    return UserModelLoadingInitial();
  }

  UserModelInitialized initialized(UserInitialized user,
      [bool refreshing = false]) {
    return UserModelInitialized(
      user,
      refreshing,
    );
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;
}

/// @nodoc
abstract class $UserModelInitialCopyWith<$Res> {
  factory $UserModelInitialCopyWith(
          UserModelInitial value, $Res Function(UserModelInitial) then) =
      _$UserModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserModelInitialCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements $UserModelInitialCopyWith<$Res> {
  _$UserModelInitialCopyWithImpl(
      UserModelInitial _value, $Res Function(UserModelInitial) _then)
      : super(_value, (v) => _then(v as UserModelInitial));

  @override
  UserModelInitial get _value => super._value as UserModelInitial;
}

/// @nodoc

class _$UserModelInitial extends UserModelInitial {
  _$UserModelInitial() : super._();

  @override
  String toString() {
    return 'UserModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserModelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
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
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserModelInitial extends UserModel {
  factory UserModelInitial() = _$UserModelInitial;
  UserModelInitial._() : super._();
}

/// @nodoc
abstract class $UserModelLoadingInitialCopyWith<$Res> {
  factory $UserModelLoadingInitialCopyWith(UserModelLoadingInitial value,
          $Res Function(UserModelLoadingInitial) then) =
      _$UserModelLoadingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserModelLoadingInitialCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res>
    implements $UserModelLoadingInitialCopyWith<$Res> {
  _$UserModelLoadingInitialCopyWithImpl(UserModelLoadingInitial _value,
      $Res Function(UserModelLoadingInitial) _then)
      : super(_value, (v) => _then(v as UserModelLoadingInitial));

  @override
  UserModelLoadingInitial get _value => super._value as UserModelLoadingInitial;
}

/// @nodoc

class _$UserModelLoadingInitial extends UserModelLoadingInitial {
  _$UserModelLoadingInitial() : super._();

  @override
  String toString() {
    return 'UserModel.loadingInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserModelLoadingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) {
    return loadingInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
  }) {
    return loadingInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) {
    if (loadingInitial != null) {
      return loadingInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) {
    return loadingInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
  }) {
    return loadingInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (loadingInitial != null) {
      return loadingInitial(this);
    }
    return orElse();
  }
}

abstract class UserModelLoadingInitial extends UserModel {
  factory UserModelLoadingInitial() = _$UserModelLoadingInitial;
  UserModelLoadingInitial._() : super._();
}

/// @nodoc
abstract class $UserModelInitializedCopyWith<$Res> {
  factory $UserModelInitializedCopyWith(UserModelInitialized value,
          $Res Function(UserModelInitialized) then) =
      _$UserModelInitializedCopyWithImpl<$Res>;
  $Res call({UserInitialized user, bool refreshing});
}

/// @nodoc
class _$UserModelInitializedCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res>
    implements $UserModelInitializedCopyWith<$Res> {
  _$UserModelInitializedCopyWithImpl(
      UserModelInitialized _value, $Res Function(UserModelInitialized) _then)
      : super(_value, (v) => _then(v as UserModelInitialized));

  @override
  UserModelInitialized get _value => super._value as UserModelInitialized;

  @override
  $Res call({
    Object? user = freezed,
    Object? refreshing = freezed,
  }) {
    return _then(UserModelInitialized(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInitialized,
      refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserModelInitialized extends UserModelInitialized {
  _$UserModelInitialized(this.user, [this.refreshing = false]) : super._();

  @override
  final UserInitialized user;
  @JsonKey(defaultValue: false)
  @override
  final bool refreshing;

  @override
  String toString() {
    return 'UserModel.initialized(user: $user, refreshing: $refreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModelInitialized &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.refreshing, refreshing) ||
                other.refreshing == refreshing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, refreshing);

  @JsonKey(ignore: true)
  @override
  $UserModelInitializedCopyWith<UserModelInitialized> get copyWith =>
      _$UserModelInitializedCopyWithImpl<UserModelInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInitial,
    required TResult Function(UserInitialized user, bool refreshing)
        initialized,
  }) {
    return initialized(user, refreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
  }) {
    return initialized?.call(user, refreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInitial,
    TResult Function(UserInitialized user, bool refreshing)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(user, refreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserModelInitial value) initial,
    required TResult Function(UserModelLoadingInitial value) loadingInitial,
    required TResult Function(UserModelInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserModelInitial value)? initial,
    TResult Function(UserModelLoadingInitial value)? loadingInitial,
    TResult Function(UserModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class UserModelInitialized extends UserModel {
  factory UserModelInitialized(UserInitialized user, [bool refreshing]) =
      _$UserModelInitialized;
  UserModelInitialized._() : super._();

  UserInitialized get user;
  bool get refreshing;
  @JsonKey(ignore: true)
  $UserModelInitializedCopyWith<UserModelInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
