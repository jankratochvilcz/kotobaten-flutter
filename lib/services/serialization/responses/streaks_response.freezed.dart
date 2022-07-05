// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'streaks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreaksResponse _$StreaksResponseFromJson(Map<String, dynamic> json) {
  return StreakResponseInitialized.fromJson(json);
}

/// @nodoc
class _$StreaksResponseTearOff {
  const _$StreaksResponseTearOff();

  StreakResponseInitialized initialized(List<DayStreak> days) {
    return StreakResponseInitialized(
      days,
    );
  }

  StreaksResponse fromJson(Map<String, Object?> json) {
    return StreaksResponse.fromJson(json);
  }
}

/// @nodoc
const $StreaksResponse = _$StreaksResponseTearOff();

/// @nodoc
mixin _$StreaksResponse {
  List<DayStreak> get days => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayStreak> days) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DayStreak> days)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayStreak> days)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreakResponseInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreakResponseInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreakResponseInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreaksResponseCopyWith<StreaksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreaksResponseCopyWith<$Res> {
  factory $StreaksResponseCopyWith(
          StreaksResponse value, $Res Function(StreaksResponse) then) =
      _$StreaksResponseCopyWithImpl<$Res>;
  $Res call({List<DayStreak> days});
}

/// @nodoc
class _$StreaksResponseCopyWithImpl<$Res>
    implements $StreaksResponseCopyWith<$Res> {
  _$StreaksResponseCopyWithImpl(this._value, this._then);

  final StreaksResponse _value;
  // ignore: unused_field
  final $Res Function(StreaksResponse) _then;

  @override
  $Res call({
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayStreak>,
    ));
  }
}

/// @nodoc
abstract class $StreakResponseInitializedCopyWith<$Res>
    implements $StreaksResponseCopyWith<$Res> {
  factory $StreakResponseInitializedCopyWith(StreakResponseInitialized value,
          $Res Function(StreakResponseInitialized) then) =
      _$StreakResponseInitializedCopyWithImpl<$Res>;
  @override
  $Res call({List<DayStreak> days});
}

/// @nodoc
class _$StreakResponseInitializedCopyWithImpl<$Res>
    extends _$StreaksResponseCopyWithImpl<$Res>
    implements $StreakResponseInitializedCopyWith<$Res> {
  _$StreakResponseInitializedCopyWithImpl(StreakResponseInitialized _value,
      $Res Function(StreakResponseInitialized) _then)
      : super(_value, (v) => _then(v as StreakResponseInitialized));

  @override
  StreakResponseInitialized get _value =>
      super._value as StreakResponseInitialized;

  @override
  $Res call({
    Object? days = freezed,
  }) {
    return _then(StreakResponseInitialized(
      days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayStreak>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreakResponseInitialized implements StreakResponseInitialized {
  _$StreakResponseInitialized(this.days);

  factory _$StreakResponseInitialized.fromJson(Map<String, dynamic> json) =>
      _$$StreakResponseInitializedFromJson(json);

  @override
  final List<DayStreak> days;

  @override
  String toString() {
    return 'StreaksResponse.initialized(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StreakResponseInitialized &&
            const DeepCollectionEquality().equals(other.days, days));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(days));

  @JsonKey(ignore: true)
  @override
  $StreakResponseInitializedCopyWith<StreakResponseInitialized> get copyWith =>
      _$StreakResponseInitializedCopyWithImpl<StreakResponseInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayStreak> days) initialized,
  }) {
    return initialized(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<DayStreak> days)? initialized,
  }) {
    return initialized?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayStreak> days)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StreakResponseInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StreakResponseInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StreakResponseInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StreakResponseInitializedToJson(this);
  }
}

abstract class StreakResponseInitialized implements StreaksResponse {
  factory StreakResponseInitialized(List<DayStreak> days) =
      _$StreakResponseInitialized;

  factory StreakResponseInitialized.fromJson(Map<String, dynamic> json) =
      _$StreakResponseInitialized.fromJson;

  @override
  List<DayStreak> get days;
  @override
  @JsonKey(ignore: true)
  $StreakResponseInitializedCopyWith<StreakResponseInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}
