// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCore _$UserCoreFromJson(Map<String, dynamic> json) {
  return UserCoreInitialized.fromJson(json);
}

/// @nodoc
class _$UserCoreTearOff {
  const _$UserCoreTearOff();

  UserCoreInitialized initialized(int id, String email) {
    return UserCoreInitialized(
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
    required TResult Function(UserCoreInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserCoreInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCoreInitialized value)? initialized,
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
abstract class $UserCoreInitializedCopyWith<$Res>
    implements $UserCoreCopyWith<$Res> {
  factory $UserCoreInitializedCopyWith(
          UserCoreInitialized value, $Res Function(UserCoreInitialized) then) =
      _$UserCoreInitializedCopyWithImpl<$Res>;
  @override
  $Res call({int id, String email});
}

/// @nodoc
class _$UserCoreInitializedCopyWithImpl<$Res>
    extends _$UserCoreCopyWithImpl<$Res>
    implements $UserCoreInitializedCopyWith<$Res> {
  _$UserCoreInitializedCopyWithImpl(
      UserCoreInitialized _value, $Res Function(UserCoreInitialized) _then)
      : super(_value, (v) => _then(v as UserCoreInitialized));

  @override
  UserCoreInitialized get _value => super._value as UserCoreInitialized;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(UserCoreInitialized(
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
class _$UserCoreInitialized implements UserCoreInitialized {
  _$UserCoreInitialized(this.id, this.email);

  factory _$UserCoreInitialized.fromJson(Map<String, dynamic> json) =>
      _$$UserCoreInitializedFromJson(json);

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
            other is UserCoreInitialized &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $UserCoreInitializedCopyWith<UserCoreInitialized> get copyWith =>
      _$UserCoreInitializedCopyWithImpl<UserCoreInitialized>(this, _$identity);

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
    required TResult Function(UserCoreInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserCoreInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserCoreInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCoreInitializedToJson(this);
  }
}

abstract class UserCoreInitialized implements UserCore {
  factory UserCoreInitialized(int id, String email) = _$UserCoreInitialized;

  factory UserCoreInitialized.fromJson(Map<String, dynamic> json) =
      _$UserCoreInitialized.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  $UserCoreInitializedCopyWith<UserCoreInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
