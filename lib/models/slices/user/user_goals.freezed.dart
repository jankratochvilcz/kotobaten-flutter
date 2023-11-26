// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_goals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGoals _$UserGoalsFromJson(Map<String, dynamic> json) {
  return UserGoalsInitialized.fromJson(json);
}

/// @nodoc
mixin _$UserGoals {
  int get discoverWeekly => throw _privateConstructorUsedError;
  int get discoverMonthly => throw _privateConstructorUsedError;
  int get discoverDaily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGoalsCopyWith<UserGoals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGoalsCopyWith<$Res> {
  factory $UserGoalsCopyWith(UserGoals value, $Res Function(UserGoals) then) =
      _$UserGoalsCopyWithImpl<$Res, UserGoals>;
  @useResult
  $Res call({int discoverWeekly, int discoverMonthly, int discoverDaily});
}

/// @nodoc
class _$UserGoalsCopyWithImpl<$Res, $Val extends UserGoals>
    implements $UserGoalsCopyWith<$Res> {
  _$UserGoalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoverWeekly = null,
    Object? discoverMonthly = null,
    Object? discoverDaily = null,
  }) {
    return _then(_value.copyWith(
      discoverWeekly: null == discoverWeekly
          ? _value.discoverWeekly
          : discoverWeekly // ignore: cast_nullable_to_non_nullable
              as int,
      discoverMonthly: null == discoverMonthly
          ? _value.discoverMonthly
          : discoverMonthly // ignore: cast_nullable_to_non_nullable
              as int,
      discoverDaily: null == discoverDaily
          ? _value.discoverDaily
          : discoverDaily // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGoalsInitializedImplCopyWith<$Res>
    implements $UserGoalsCopyWith<$Res> {
  factory _$$UserGoalsInitializedImplCopyWith(_$UserGoalsInitializedImpl value,
          $Res Function(_$UserGoalsInitializedImpl) then) =
      __$$UserGoalsInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int discoverWeekly, int discoverMonthly, int discoverDaily});
}

/// @nodoc
class __$$UserGoalsInitializedImplCopyWithImpl<$Res>
    extends _$UserGoalsCopyWithImpl<$Res, _$UserGoalsInitializedImpl>
    implements _$$UserGoalsInitializedImplCopyWith<$Res> {
  __$$UserGoalsInitializedImplCopyWithImpl(_$UserGoalsInitializedImpl _value,
      $Res Function(_$UserGoalsInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoverWeekly = null,
    Object? discoverMonthly = null,
    Object? discoverDaily = null,
  }) {
    return _then(_$UserGoalsInitializedImpl(
      null == discoverWeekly
          ? _value.discoverWeekly
          : discoverWeekly // ignore: cast_nullable_to_non_nullable
              as int,
      null == discoverMonthly
          ? _value.discoverMonthly
          : discoverMonthly // ignore: cast_nullable_to_non_nullable
              as int,
      null == discoverDaily
          ? _value.discoverDaily
          : discoverDaily // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGoalsInitializedImpl implements UserGoalsInitialized {
  _$UserGoalsInitializedImpl(
      this.discoverWeekly, this.discoverMonthly, this.discoverDaily);

  factory _$UserGoalsInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGoalsInitializedImplFromJson(json);

  @override
  final int discoverWeekly;
  @override
  final int discoverMonthly;
  @override
  final int discoverDaily;

  @override
  String toString() {
    return 'UserGoals(discoverWeekly: $discoverWeekly, discoverMonthly: $discoverMonthly, discoverDaily: $discoverDaily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGoalsInitializedImpl &&
            (identical(other.discoverWeekly, discoverWeekly) ||
                other.discoverWeekly == discoverWeekly) &&
            (identical(other.discoverMonthly, discoverMonthly) ||
                other.discoverMonthly == discoverMonthly) &&
            (identical(other.discoverDaily, discoverDaily) ||
                other.discoverDaily == discoverDaily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discoverWeekly, discoverMonthly, discoverDaily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGoalsInitializedImplCopyWith<_$UserGoalsInitializedImpl>
      get copyWith =>
          __$$UserGoalsInitializedImplCopyWithImpl<_$UserGoalsInitializedImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGoalsInitializedImplToJson(
      this,
    );
  }
}

abstract class UserGoalsInitialized implements UserGoals {
  factory UserGoalsInitialized(
      final int discoverWeekly,
      final int discoverMonthly,
      final int discoverDaily) = _$UserGoalsInitializedImpl;

  factory UserGoalsInitialized.fromJson(Map<String, dynamic> json) =
      _$UserGoalsInitializedImpl.fromJson;

  @override
  int get discoverWeekly;
  @override
  int get discoverMonthly;
  @override
  int get discoverDaily;
  @override
  @JsonKey(ignore: true)
  _$$UserGoalsInitializedImplCopyWith<_$UserGoalsInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
