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
  int get retentionBackstopMaxThreshold => throw _privateConstructorUsedError;
  bool get disableSounds => throw _privateConstructorUsedError;
  String? get timezoneName => throw _privateConstructorUsedError;
  int? get utcOffsetHours => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String email,
            int retentionBackstopMaxThreshold,
            bool disableSounds,
            String? timezoneName,
            int? utcOffsetHours)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String email, int retentionBackstopMaxThreshold,
            bool disableSounds, String? timezoneName, int? utcOffsetHours)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String email, int retentionBackstopMaxThreshold,
            bool disableSounds, String? timezoneName, int? utcOffsetHours)?
        initialized,
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
  $Res call(
      {int id,
      String email,
      int retentionBackstopMaxThreshold,
      bool disableSounds,
      String? timezoneName,
      int? utcOffsetHours});
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
    Object? retentionBackstopMaxThreshold = null,
    Object? disableSounds = null,
    Object? timezoneName = freezed,
    Object? utcOffsetHours = freezed,
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
      retentionBackstopMaxThreshold: null == retentionBackstopMaxThreshold
          ? _value.retentionBackstopMaxThreshold
          : retentionBackstopMaxThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      disableSounds: null == disableSounds
          ? _value.disableSounds
          : disableSounds // ignore: cast_nullable_to_non_nullable
              as bool,
      timezoneName: freezed == timezoneName
          ? _value.timezoneName
          : timezoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      utcOffsetHours: freezed == utcOffsetHours
          ? _value.utcOffsetHours
          : utcOffsetHours // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCoreInitializedImplCopyWith<$Res>
    implements $UserCoreCopyWith<$Res> {
  factory _$$UserCoreInitializedImplCopyWith(_$UserCoreInitializedImpl value,
          $Res Function(_$UserCoreInitializedImpl) then) =
      __$$UserCoreInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      int retentionBackstopMaxThreshold,
      bool disableSounds,
      String? timezoneName,
      int? utcOffsetHours});
}

/// @nodoc
class __$$UserCoreInitializedImplCopyWithImpl<$Res>
    extends _$UserCoreCopyWithImpl<$Res, _$UserCoreInitializedImpl>
    implements _$$UserCoreInitializedImplCopyWith<$Res> {
  __$$UserCoreInitializedImplCopyWithImpl(_$UserCoreInitializedImpl _value,
      $Res Function(_$UserCoreInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? retentionBackstopMaxThreshold = null,
    Object? disableSounds = null,
    Object? timezoneName = freezed,
    Object? utcOffsetHours = freezed,
  }) {
    return _then(_$UserCoreInitializedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == retentionBackstopMaxThreshold
          ? _value.retentionBackstopMaxThreshold
          : retentionBackstopMaxThreshold // ignore: cast_nullable_to_non_nullable
              as int,
      null == disableSounds
          ? _value.disableSounds
          : disableSounds // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == timezoneName
          ? _value.timezoneName
          : timezoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == utcOffsetHours
          ? _value.utcOffsetHours
          : utcOffsetHours // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCoreInitializedImpl implements UserCoreInitialized {
  _$UserCoreInitializedImpl(
      this.id,
      this.email,
      this.retentionBackstopMaxThreshold,
      this.disableSounds,
      this.timezoneName,
      this.utcOffsetHours);

  factory _$UserCoreInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCoreInitializedImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final int retentionBackstopMaxThreshold;
  @override
  final bool disableSounds;
  @override
  final String? timezoneName;
  @override
  final int? utcOffsetHours;

  @override
  String toString() {
    return 'UserCore.initialized(id: $id, email: $email, retentionBackstopMaxThreshold: $retentionBackstopMaxThreshold, disableSounds: $disableSounds, timezoneName: $timezoneName, utcOffsetHours: $utcOffsetHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCoreInitializedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.retentionBackstopMaxThreshold,
                    retentionBackstopMaxThreshold) ||
                other.retentionBackstopMaxThreshold ==
                    retentionBackstopMaxThreshold) &&
            (identical(other.disableSounds, disableSounds) ||
                other.disableSounds == disableSounds) &&
            (identical(other.timezoneName, timezoneName) ||
                other.timezoneName == timezoneName) &&
            (identical(other.utcOffsetHours, utcOffsetHours) ||
                other.utcOffsetHours == utcOffsetHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      retentionBackstopMaxThreshold,
      disableSounds,
      timezoneName,
      utcOffsetHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCoreInitializedImplCopyWith<_$UserCoreInitializedImpl> get copyWith =>
      __$$UserCoreInitializedImplCopyWithImpl<_$UserCoreInitializedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String email,
            int retentionBackstopMaxThreshold,
            bool disableSounds,
            String? timezoneName,
            int? utcOffsetHours)
        initialized,
  }) {
    return initialized(id, email, retentionBackstopMaxThreshold, disableSounds,
        timezoneName, utcOffsetHours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String email, int retentionBackstopMaxThreshold,
            bool disableSounds, String? timezoneName, int? utcOffsetHours)?
        initialized,
  }) {
    return initialized?.call(id, email, retentionBackstopMaxThreshold,
        disableSounds, timezoneName, utcOffsetHours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String email, int retentionBackstopMaxThreshold,
            bool disableSounds, String? timezoneName, int? utcOffsetHours)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(id, email, retentionBackstopMaxThreshold,
          disableSounds, timezoneName, utcOffsetHours);
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
    return _$$UserCoreInitializedImplToJson(
      this,
    );
  }
}

abstract class UserCoreInitialized implements UserCore {
  factory UserCoreInitialized(
      final int id,
      final String email,
      final int retentionBackstopMaxThreshold,
      final bool disableSounds,
      final String? timezoneName,
      final int? utcOffsetHours) = _$UserCoreInitializedImpl;

  factory UserCoreInitialized.fromJson(Map<String, dynamic> json) =
      _$UserCoreInitializedImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  int get retentionBackstopMaxThreshold;
  @override
  bool get disableSounds;
  @override
  String? get timezoneName;
  @override
  int? get utcOffsetHours;
  @override
  @JsonKey(ignore: true)
  _$$UserCoreInitializedImplCopyWith<_$UserCoreInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
