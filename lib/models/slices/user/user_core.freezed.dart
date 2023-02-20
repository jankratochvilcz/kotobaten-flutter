// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCore _$UserCoreFromJson(Map<String, dynamic> json) {
  return UserCoreInitialized.fromJson(json);
}

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
    TResult? Function(int id, String email)? initialized,
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
    TResult? Function(UserCoreInitialized value)? initialized,
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
      _$UserCoreCopyWithImpl<$Res, UserCore>;
  @useResult
  $Res call({int id, String email});
}

/// @nodoc
class _$UserCoreCopyWithImpl<$Res, $Val extends UserCore>
    implements $UserCoreCopyWith<$Res> {
  _$UserCoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCoreInitializedCopyWith<$Res>
    implements $UserCoreCopyWith<$Res> {
  factory _$$UserCoreInitializedCopyWith(_$UserCoreInitialized value,
          $Res Function(_$UserCoreInitialized) then) =
      __$$UserCoreInitializedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String email});
}

/// @nodoc
class __$$UserCoreInitializedCopyWithImpl<$Res>
    extends _$UserCoreCopyWithImpl<$Res, _$UserCoreInitialized>
    implements _$$UserCoreInitializedCopyWith<$Res> {
  __$$UserCoreInitializedCopyWithImpl(
      _$UserCoreInitialized _value, $Res Function(_$UserCoreInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
  }) {
    return _then(_$UserCoreInitialized(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == email
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
            other is _$UserCoreInitialized &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCoreInitializedCopyWith<_$UserCoreInitialized> get copyWith =>
      __$$UserCoreInitializedCopyWithImpl<_$UserCoreInitialized>(
          this, _$identity);

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
    TResult? Function(int id, String email)? initialized,
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
    TResult? Function(UserCoreInitialized value)? initialized,
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
    return _$$UserCoreInitializedToJson(
      this,
    );
  }
}

abstract class UserCoreInitialized implements UserCore {
  factory UserCoreInitialized(final int id, final String email) =
      _$UserCoreInitialized;

  factory UserCoreInitialized.fromJson(Map<String, dynamic> json) =
      _$UserCoreInitialized.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$UserCoreInitializedCopyWith<_$UserCoreInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
