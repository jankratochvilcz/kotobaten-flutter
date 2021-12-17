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
  return UserInitialized.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  UserInitialized call(UserStatistics stats, UserCore user, UserGoals goals) {
    return UserInitialized(
      stats,
      user,
      goals,
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
  UserStatistics get stats => throw _privateConstructorUsedError;
  UserCore get user => throw _privateConstructorUsedError;
  UserGoals get goals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({UserStatistics stats, UserCore user, UserGoals goals});

  $UserStatisticsCopyWith<$Res> get stats;
  $UserCoreCopyWith<$Res> get user;
  $UserGoalsCopyWith<$Res> get goals;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? stats = freezed,
    Object? user = freezed,
    Object? goals = freezed,
  }) {
    return _then(_value.copyWith(
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCore,
      goals: goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as UserGoals,
    ));
  }

  @override
  $UserStatisticsCopyWith<$Res> get stats {
    return $UserStatisticsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }

  @override
  $UserCoreCopyWith<$Res> get user {
    return $UserCoreCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $UserGoalsCopyWith<$Res> get goals {
    return $UserGoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value));
    });
  }
}

/// @nodoc
abstract class $UserInitializedCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UserInitializedCopyWith(
          UserInitialized value, $Res Function(UserInitialized) then) =
      _$UserInitializedCopyWithImpl<$Res>;
  @override
  $Res call({UserStatistics stats, UserCore user, UserGoals goals});

  @override
  $UserStatisticsCopyWith<$Res> get stats;
  @override
  $UserCoreCopyWith<$Res> get user;
  @override
  $UserGoalsCopyWith<$Res> get goals;
}

/// @nodoc
class _$UserInitializedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserInitializedCopyWith<$Res> {
  _$UserInitializedCopyWithImpl(
      UserInitialized _value, $Res Function(UserInitialized) _then)
      : super(_value, (v) => _then(v as UserInitialized));

  @override
  UserInitialized get _value => super._value as UserInitialized;

  @override
  $Res call({
    Object? stats = freezed,
    Object? user = freezed,
    Object? goals = freezed,
  }) {
    return _then(UserInitialized(
      stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCore,
      goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as UserGoals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInitialized implements UserInitialized {
  _$UserInitialized(this.stats, this.user, this.goals);

  factory _$UserInitialized.fromJson(Map<String, dynamic> json) =>
      _$$UserInitializedFromJson(json);

  @override
  final UserStatistics stats;
  @override
  final UserCore user;
  @override
  final UserGoals goals;

  @override
  String toString() {
    return 'User(stats: $stats, user: $user, goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserInitialized &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.goals, goals) || other.goals == goals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats, user, goals);

  @JsonKey(ignore: true)
  @override
  $UserInitializedCopyWith<UserInitialized> get copyWith =>
      _$UserInitializedCopyWithImpl<UserInitialized>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInitializedToJson(this);
  }
}

abstract class UserInitialized implements User {
  factory UserInitialized(
      UserStatistics stats, UserCore user, UserGoals goals) = _$UserInitialized;

  factory UserInitialized.fromJson(Map<String, dynamic> json) =
      _$UserInitialized.fromJson;

  @override
  UserStatistics get stats;
  @override
  UserCore get user;
  @override
  UserGoals get goals;
  @override
  @JsonKey(ignore: true)
  $UserInitializedCopyWith<UserInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
