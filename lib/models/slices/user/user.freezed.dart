// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return UserInitialized.fromJson(json);
}

/// @nodoc
mixin _$User {
  UserStatistics get stats => throw _privateConstructorUsedError;
  UserCore get user => throw _privateConstructorUsedError;
  UserGoals get goals => throw _privateConstructorUsedError;
  UserOnboarding get onboarding => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UserStatistics stats,
      UserCore user,
      UserGoals goals,
      UserOnboarding onboarding});

  $UserStatisticsCopyWith<$Res> get stats;
  $UserCoreCopyWith<$Res> get user;
  $UserGoalsCopyWith<$Res> get goals;
  $UserOnboardingCopyWith<$Res> get onboarding;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stats = null,
    Object? user = null,
    Object? goals = null,
    Object? onboarding = null,
  }) {
    return _then(_value.copyWith(
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCore,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as UserGoals,
      onboarding: null == onboarding
          ? _value.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as UserOnboarding,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStatisticsCopyWith<$Res> get stats {
    return $UserStatisticsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCoreCopyWith<$Res> get user {
    return $UserCoreCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserGoalsCopyWith<$Res> get goals {
    return $UserGoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserOnboardingCopyWith<$Res> get onboarding {
    return $UserOnboardingCopyWith<$Res>(_value.onboarding, (value) {
      return _then(_value.copyWith(onboarding: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInitializedImplCopyWith<$Res>
    implements $UserCopyWith<$Res> {
  factory _$$UserInitializedImplCopyWith(_$UserInitializedImpl value,
          $Res Function(_$UserInitializedImpl) then) =
      __$$UserInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserStatistics stats,
      UserCore user,
      UserGoals goals,
      UserOnboarding onboarding});

  @override
  $UserStatisticsCopyWith<$Res> get stats;
  @override
  $UserCoreCopyWith<$Res> get user;
  @override
  $UserGoalsCopyWith<$Res> get goals;
  @override
  $UserOnboardingCopyWith<$Res> get onboarding;
}

/// @nodoc
class __$$UserInitializedImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserInitializedImpl>
    implements _$$UserInitializedImplCopyWith<$Res> {
  __$$UserInitializedImplCopyWithImpl(
      _$UserInitializedImpl _value, $Res Function(_$UserInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stats = null,
    Object? user = null,
    Object? goals = null,
    Object? onboarding = null,
  }) {
    return _then(_$UserInitializedImpl(
      null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCore,
      null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as UserGoals,
      null == onboarding
          ? _value.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as UserOnboarding,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInitializedImpl implements UserInitialized {
  _$UserInitializedImpl(this.stats, this.user, this.goals, this.onboarding);

  factory _$UserInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInitializedImplFromJson(json);

  @override
  final UserStatistics stats;
  @override
  final UserCore user;
  @override
  final UserGoals goals;
  @override
  final UserOnboarding onboarding;

  @override
  String toString() {
    return 'User(stats: $stats, user: $user, goals: $goals, onboarding: $onboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInitializedImpl &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.onboarding, onboarding) ||
                other.onboarding == onboarding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stats, user, goals, onboarding);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInitializedImplCopyWith<_$UserInitializedImpl> get copyWith =>
      __$$UserInitializedImplCopyWithImpl<_$UserInitializedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInitializedImplToJson(
      this,
    );
  }
}

abstract class UserInitialized implements User {
  factory UserInitialized(
      final UserStatistics stats,
      final UserCore user,
      final UserGoals goals,
      final UserOnboarding onboarding) = _$UserInitializedImpl;

  factory UserInitialized.fromJson(Map<String, dynamic> json) =
      _$UserInitializedImpl.fromJson;

  @override
  UserStatistics get stats;
  @override
  UserCore get user;
  @override
  UserGoals get goals;
  @override
  UserOnboarding get onboarding;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInitializedImplCopyWith<_$UserInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
