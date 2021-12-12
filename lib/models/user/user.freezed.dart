// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'initial':
      return InitialUser.fromJson(json);
    case 'initialized':
      return InitializedUser.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  InitialUser initial() {
    return InitialUser();
  }

  InitializedUser initialized(Statistics stats, UserCore user) {
    return InitializedUser(
      stats,
      user,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Statistics stats, UserCore user) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Statistics stats, UserCore user)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Statistics stats, UserCore user)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUser value) initial,
    required TResult Function(InitializedUser value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUser value)? initial,
    TResult Function(InitializedUser value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUser value)? initial,
    TResult Function(InitializedUser value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

/// @nodoc
abstract class $InitialUserCopyWith<$Res> {
  factory $InitialUserCopyWith(
          InitialUser value, $Res Function(InitialUser) then) =
      _$InitialUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $InitialUserCopyWith<$Res> {
  _$InitialUserCopyWithImpl(
      InitialUser _value, $Res Function(InitialUser) _then)
      : super(_value, (v) => _then(v as InitialUser));

  @override
  InitialUser get _value => super._value as InitialUser;
}

/// @nodoc
@JsonSerializable()
class _$InitialUser implements InitialUser {
  _$InitialUser();

  factory _$InitialUser.fromJson(Map<String, dynamic> json) =>
      _$$InitialUserFromJson(json);

  @override
  String toString() {
    return 'User.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Statistics stats, UserCore user) initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Statistics stats, UserCore user)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Statistics stats, UserCore user)? initialized,
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
    required TResult Function(InitialUser value) initial,
    required TResult Function(InitializedUser value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUser value)? initial,
    TResult Function(InitializedUser value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUser value)? initial,
    TResult Function(InitializedUser value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialUserToJson(this)..['runtimeType'] = 'initial';
  }
}

abstract class InitialUser implements User {
  factory InitialUser() = _$InitialUser;

  factory InitialUser.fromJson(Map<String, dynamic> json) =
      _$InitialUser.fromJson;
}

/// @nodoc
abstract class $InitializedUserCopyWith<$Res> {
  factory $InitializedUserCopyWith(
          InitializedUser value, $Res Function(InitializedUser) then) =
      _$InitializedUserCopyWithImpl<$Res>;
  $Res call({Statistics stats, UserCore user});

  $UserCoreCopyWith<$Res> get user;
}

/// @nodoc
class _$InitializedUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $InitializedUserCopyWith<$Res> {
  _$InitializedUserCopyWithImpl(
      InitializedUser _value, $Res Function(InitializedUser) _then)
      : super(_value, (v) => _then(v as InitializedUser));

  @override
  InitializedUser get _value => super._value as InitializedUser;

  @override
  $Res call({
    Object? stats = freezed,
    Object? user = freezed,
  }) {
    return _then(InitializedUser(
      stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Statistics,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCore,
    ));
  }

  @override
  $UserCoreCopyWith<$Res> get user {
    return $UserCoreCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedUser implements InitializedUser {
  _$InitializedUser(this.stats, this.user);

  factory _$InitializedUser.fromJson(Map<String, dynamic> json) =>
      _$$InitializedUserFromJson(json);

  @override
  final Statistics stats;
  @override
  final UserCore user;

  @override
  String toString() {
    return 'User.initialized(stats: $stats, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitializedUser &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats, user);

  @JsonKey(ignore: true)
  @override
  $InitializedUserCopyWith<InitializedUser> get copyWith =>
      _$InitializedUserCopyWithImpl<InitializedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Statistics stats, UserCore user) initialized,
  }) {
    return initialized(stats, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Statistics stats, UserCore user)? initialized,
  }) {
    return initialized?.call(stats, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Statistics stats, UserCore user)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(stats, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUser value) initial,
    required TResult Function(InitializedUser value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialUser value)? initial,
    TResult Function(InitializedUser value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUser value)? initial,
    TResult Function(InitializedUser value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitializedUserToJson(this)..['runtimeType'] = 'initialized';
  }
}

abstract class InitializedUser implements User {
  factory InitializedUser(Statistics stats, UserCore user) = _$InitializedUser;

  factory InitializedUser.fromJson(Map<String, dynamic> json) =
      _$InitializedUser.fromJson;

  Statistics get stats;
  UserCore get user;
  @JsonKey(ignore: true)
  $InitializedUserCopyWith<InitializedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
