// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_goals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGoals _$UserGoalsFromJson(Map<String, dynamic> json) {
  return UserGoalsInitialized.fromJson(json);
}

/// @nodoc
class _$UserGoalsTearOff {
  const _$UserGoalsTearOff();

  UserGoalsInitialized call(
      int discoverWeekly, int discoverMonthly, int discoverDaily) {
    return UserGoalsInitialized(
      discoverWeekly,
      discoverMonthly,
      discoverDaily,
    );
  }

  UserGoals fromJson(Map<String, Object?> json) {
    return UserGoals.fromJson(json);
  }
}

/// @nodoc
const $UserGoals = _$UserGoalsTearOff();

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
      _$UserGoalsCopyWithImpl<$Res>;
  $Res call({int discoverWeekly, int discoverMonthly, int discoverDaily});
}

/// @nodoc
class _$UserGoalsCopyWithImpl<$Res> implements $UserGoalsCopyWith<$Res> {
  _$UserGoalsCopyWithImpl(this._value, this._then);

  final UserGoals _value;
  // ignore: unused_field
  final $Res Function(UserGoals) _then;

  @override
  $Res call({
    Object? discoverWeekly = freezed,
    Object? discoverMonthly = freezed,
    Object? discoverDaily = freezed,
  }) {
    return _then(_value.copyWith(
      discoverWeekly: discoverWeekly == freezed
          ? _value.discoverWeekly
          : discoverWeekly // ignore: cast_nullable_to_non_nullable
              as int,
      discoverMonthly: discoverMonthly == freezed
          ? _value.discoverMonthly
          : discoverMonthly // ignore: cast_nullable_to_non_nullable
              as int,
      discoverDaily: discoverDaily == freezed
          ? _value.discoverDaily
          : discoverDaily // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $UserGoalsInitializedCopyWith<$Res>
    implements $UserGoalsCopyWith<$Res> {
  factory $UserGoalsInitializedCopyWith(UserGoalsInitialized value,
          $Res Function(UserGoalsInitialized) then) =
      _$UserGoalsInitializedCopyWithImpl<$Res>;
  @override
  $Res call({int discoverWeekly, int discoverMonthly, int discoverDaily});
}

/// @nodoc
class _$UserGoalsInitializedCopyWithImpl<$Res>
    extends _$UserGoalsCopyWithImpl<$Res>
    implements $UserGoalsInitializedCopyWith<$Res> {
  _$UserGoalsInitializedCopyWithImpl(
      UserGoalsInitialized _value, $Res Function(UserGoalsInitialized) _then)
      : super(_value, (v) => _then(v as UserGoalsInitialized));

  @override
  UserGoalsInitialized get _value => super._value as UserGoalsInitialized;

  @override
  $Res call({
    Object? discoverWeekly = freezed,
    Object? discoverMonthly = freezed,
    Object? discoverDaily = freezed,
  }) {
    return _then(UserGoalsInitialized(
      discoverWeekly == freezed
          ? _value.discoverWeekly
          : discoverWeekly // ignore: cast_nullable_to_non_nullable
              as int,
      discoverMonthly == freezed
          ? _value.discoverMonthly
          : discoverMonthly // ignore: cast_nullable_to_non_nullable
              as int,
      discoverDaily == freezed
          ? _value.discoverDaily
          : discoverDaily // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGoalsInitialized implements UserGoalsInitialized {
  _$UserGoalsInitialized(
      this.discoverWeekly, this.discoverMonthly, this.discoverDaily);

  factory _$UserGoalsInitialized.fromJson(Map<String, dynamic> json) =>
      _$$UserGoalsInitializedFromJson(json);

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
            other is UserGoalsInitialized &&
            (identical(other.discoverWeekly, discoverWeekly) ||
                other.discoverWeekly == discoverWeekly) &&
            (identical(other.discoverMonthly, discoverMonthly) ||
                other.discoverMonthly == discoverMonthly) &&
            (identical(other.discoverDaily, discoverDaily) ||
                other.discoverDaily == discoverDaily));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, discoverWeekly, discoverMonthly, discoverDaily);

  @JsonKey(ignore: true)
  @override
  $UserGoalsInitializedCopyWith<UserGoalsInitialized> get copyWith =>
      _$UserGoalsInitializedCopyWithImpl<UserGoalsInitialized>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGoalsInitializedToJson(this);
  }
}

abstract class UserGoalsInitialized implements UserGoals {
  factory UserGoalsInitialized(
          int discoverWeekly, int discoverMonthly, int discoverDaily) =
      _$UserGoalsInitialized;

  factory UserGoalsInitialized.fromJson(Map<String, dynamic> json) =
      _$UserGoalsInitialized.fromJson;

  @override
  int get discoverWeekly;
  @override
  int get discoverMonthly;
  @override
  int get discoverDaily;
  @override
  @JsonKey(ignore: true)
  $UserGoalsInitializedCopyWith<UserGoalsInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
