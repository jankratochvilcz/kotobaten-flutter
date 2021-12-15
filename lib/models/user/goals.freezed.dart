// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'goals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goals _$GoalsFromJson(Map<String, dynamic> json) {
  return GoalsInitialized.fromJson(json);
}

/// @nodoc
class _$GoalsTearOff {
  const _$GoalsTearOff();

  GoalsInitialized call(
      int discoverWeekly, int discoverMonthly, int discoverDaily) {
    return GoalsInitialized(
      discoverWeekly,
      discoverMonthly,
      discoverDaily,
    );
  }

  Goals fromJson(Map<String, Object?> json) {
    return Goals.fromJson(json);
  }
}

/// @nodoc
const $Goals = _$GoalsTearOff();

/// @nodoc
mixin _$Goals {
  int get discoverWeekly => throw _privateConstructorUsedError;
  int get discoverMonthly => throw _privateConstructorUsedError;
  int get discoverDaily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsCopyWith<Goals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsCopyWith<$Res> {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) then) =
      _$GoalsCopyWithImpl<$Res>;
  $Res call({int discoverWeekly, int discoverMonthly, int discoverDaily});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res> implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  final Goals _value;
  // ignore: unused_field
  final $Res Function(Goals) _then;

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
abstract class $GoalsInitializedCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory $GoalsInitializedCopyWith(
          GoalsInitialized value, $Res Function(GoalsInitialized) then) =
      _$GoalsInitializedCopyWithImpl<$Res>;
  @override
  $Res call({int discoverWeekly, int discoverMonthly, int discoverDaily});
}

/// @nodoc
class _$GoalsInitializedCopyWithImpl<$Res> extends _$GoalsCopyWithImpl<$Res>
    implements $GoalsInitializedCopyWith<$Res> {
  _$GoalsInitializedCopyWithImpl(
      GoalsInitialized _value, $Res Function(GoalsInitialized) _then)
      : super(_value, (v) => _then(v as GoalsInitialized));

  @override
  GoalsInitialized get _value => super._value as GoalsInitialized;

  @override
  $Res call({
    Object? discoverWeekly = freezed,
    Object? discoverMonthly = freezed,
    Object? discoverDaily = freezed,
  }) {
    return _then(GoalsInitialized(
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
class _$GoalsInitialized implements GoalsInitialized {
  _$GoalsInitialized(
      this.discoverWeekly, this.discoverMonthly, this.discoverDaily);

  factory _$GoalsInitialized.fromJson(Map<String, dynamic> json) =>
      _$$GoalsInitializedFromJson(json);

  @override
  final int discoverWeekly;
  @override
  final int discoverMonthly;
  @override
  final int discoverDaily;

  @override
  String toString() {
    return 'Goals(discoverWeekly: $discoverWeekly, discoverMonthly: $discoverMonthly, discoverDaily: $discoverDaily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoalsInitialized &&
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
  $GoalsInitializedCopyWith<GoalsInitialized> get copyWith =>
      _$GoalsInitializedCopyWithImpl<GoalsInitialized>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalsInitializedToJson(this);
  }
}

abstract class GoalsInitialized implements Goals {
  factory GoalsInitialized(
          int discoverWeekly, int discoverMonthly, int discoverDaily) =
      _$GoalsInitialized;

  factory GoalsInitialized.fromJson(Map<String, dynamic> json) =
      _$GoalsInitialized.fromJson;

  @override
  int get discoverWeekly;
  @override
  int get discoverMonthly;
  @override
  int get discoverDaily;
  @override
  @JsonKey(ignore: true)
  $GoalsInitializedCopyWith<GoalsInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
