// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_day_streak.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayStreak _$DayStreakFromJson(Map<String, dynamic> json) {
  return DayStreakInitialized.fromJson(json);
}

/// @nodoc
class _$DayStreakTearOff {
  const _$DayStreakTearOff();

  DayStreakInitialized initialized(DateTime date, bool hasStreak) {
    return DayStreakInitialized(
      date,
      hasStreak,
    );
  }

  DayStreak fromJson(Map<String, Object?> json) {
    return DayStreak.fromJson(json);
  }
}

/// @nodoc
const $DayStreak = _$DayStreakTearOff();

/// @nodoc
mixin _$DayStreak {
  DateTime get date => throw _privateConstructorUsedError;
  bool get hasStreak => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, bool hasStreak) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date, bool hasStreak)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, bool hasStreak)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayStreakInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DayStreakInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayStreakInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayStreakCopyWith<DayStreak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayStreakCopyWith<$Res> {
  factory $DayStreakCopyWith(DayStreak value, $Res Function(DayStreak) then) =
      _$DayStreakCopyWithImpl<$Res>;
  $Res call({DateTime date, bool hasStreak});
}

/// @nodoc
class _$DayStreakCopyWithImpl<$Res> implements $DayStreakCopyWith<$Res> {
  _$DayStreakCopyWithImpl(this._value, this._then);

  final DayStreak _value;
  // ignore: unused_field
  final $Res Function(DayStreak) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? hasStreak = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasStreak: hasStreak == freezed
          ? _value.hasStreak
          : hasStreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DayStreakInitializedCopyWith<$Res>
    implements $DayStreakCopyWith<$Res> {
  factory $DayStreakInitializedCopyWith(DayStreakInitialized value,
          $Res Function(DayStreakInitialized) then) =
      _$DayStreakInitializedCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, bool hasStreak});
}

/// @nodoc
class _$DayStreakInitializedCopyWithImpl<$Res>
    extends _$DayStreakCopyWithImpl<$Res>
    implements $DayStreakInitializedCopyWith<$Res> {
  _$DayStreakInitializedCopyWithImpl(
      DayStreakInitialized _value, $Res Function(DayStreakInitialized) _then)
      : super(_value, (v) => _then(v as DayStreakInitialized));

  @override
  DayStreakInitialized get _value => super._value as DayStreakInitialized;

  @override
  $Res call({
    Object? date = freezed,
    Object? hasStreak = freezed,
  }) {
    return _then(DayStreakInitialized(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hasStreak == freezed
          ? _value.hasStreak
          : hasStreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayStreakInitialized implements DayStreakInitialized {
  _$DayStreakInitialized(this.date, this.hasStreak);

  factory _$DayStreakInitialized.fromJson(Map<String, dynamic> json) =>
      _$$DayStreakInitializedFromJson(json);

  @override
  final DateTime date;
  @override
  final bool hasStreak;

  @override
  String toString() {
    return 'DayStreak.initialized(date: $date, hasStreak: $hasStreak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DayStreakInitialized &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.hasStreak, hasStreak));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(hasStreak));

  @JsonKey(ignore: true)
  @override
  $DayStreakInitializedCopyWith<DayStreakInitialized> get copyWith =>
      _$DayStreakInitializedCopyWithImpl<DayStreakInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, bool hasStreak) initialized,
  }) {
    return initialized(date, hasStreak);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date, bool hasStreak)? initialized,
  }) {
    return initialized?.call(date, hasStreak);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, bool hasStreak)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(date, hasStreak);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayStreakInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DayStreakInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayStreakInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DayStreakInitializedToJson(this);
  }
}

abstract class DayStreakInitialized implements DayStreak {
  factory DayStreakInitialized(DateTime date, bool hasStreak) =
      _$DayStreakInitialized;

  factory DayStreakInitialized.fromJson(Map<String, dynamic> json) =
      _$DayStreakInitialized.fromJson;

  @override
  DateTime get date;
  @override
  bool get hasStreak;
  @override
  @JsonKey(ignore: true)
  $DayStreakInitializedCopyWith<DayStreakInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
