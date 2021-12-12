// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCore _$UserCoreFromJson(Map<String, dynamic> json) {
  return InitializedUser.fromJson(json);
}

/// @nodoc
class _$UserCoreTearOff {
  const _$UserCoreTearOff();

  InitializedUser initialized(int id, String email) {
    return InitializedUser(
      id,
      email,
    );
  }

  UserCore fromJson(Map<String, Object?> json) {
    return UserCore.fromJson(json);
  }
}

/// @nodoc
const $UserCore = _$UserCoreTearOff();

/// @nodoc
mixin _$UserCore {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String email) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String email)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String email)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializedUser value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializedUser value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializedUser value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCoreCopyWith<UserCore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCoreCopyWith<$Res> {
  factory $UserCoreCopyWith(UserCore value, $Res Function(UserCore) then) =
      _$UserCoreCopyWithImpl<$Res>;
  $Res call({int id, String email});
}

/// @nodoc
class _$UserCoreCopyWithImpl<$Res> implements $UserCoreCopyWith<$Res> {
  _$UserCoreCopyWithImpl(this._value, this._then);

  final UserCore _value;
  // ignore: unused_field
  final $Res Function(UserCore) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InitializedUserCopyWith<$Res>
    implements $UserCoreCopyWith<$Res> {
  factory $InitializedUserCopyWith(
          InitializedUser value, $Res Function(InitializedUser) then) =
      _$InitializedUserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String email});
}

/// @nodoc
class _$InitializedUserCopyWithImpl<$Res> extends _$UserCoreCopyWithImpl<$Res>
    implements $InitializedUserCopyWith<$Res> {
  _$InitializedUserCopyWithImpl(
      InitializedUser _value, $Res Function(InitializedUser) _then)
      : super(_value, (v) => _then(v as InitializedUser));

  @override
  InitializedUser get _value => super._value as InitializedUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(InitializedUser(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedUser implements InitializedUser {
  _$InitializedUser(this.id, this.email);

  factory _$InitializedUser.fromJson(Map<String, dynamic> json) =>
      _$$InitializedUserFromJson(json);

  @override
  final int id;
  @override
  final String email;

  @override
  String toString() {
    return 'UserCore.initialized(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitializedUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @JsonKey(ignore: true)
  @override
  $InitializedUserCopyWith<InitializedUser> get copyWith =>
      _$InitializedUserCopyWithImpl<InitializedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String email) initialized,
  }) {
    return initialized(id, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, String email)? initialized,
  }) {
    return initialized?.call(id, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String email)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(id, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializedUser value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializedUser value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    return _$$InitializedUserToJson(this);
  }
}

abstract class InitializedUser implements UserCore {
  factory InitializedUser(int id, String email) = _$InitializedUser;

  factory InitializedUser.fromJson(Map<String, dynamic> json) =
      _$InitializedUser.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  $InitializedUserCopyWith<InitializedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
