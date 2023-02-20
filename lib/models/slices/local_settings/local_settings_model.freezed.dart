// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalSettings {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TimeOfDay? dailyNotificationTimeOfDay)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TimeOfDay? dailyNotificationTimeOfDay)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TimeOfDay? dailyNotificationTimeOfDay)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSettingsModelInitial value) initial,
    required TResult Function(LocalSettingsModelInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSettingsModelInitial value)? initial,
    TResult? Function(LocalSettingsModelInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSettingsModelInitial value)? initial,
    TResult Function(LocalSettingsModelInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSettingsCopyWith<$Res> {
  factory $LocalSettingsCopyWith(
          LocalSettings value, $Res Function(LocalSettings) then) =
      _$LocalSettingsCopyWithImpl<$Res, LocalSettings>;
}

/// @nodoc
class _$LocalSettingsCopyWithImpl<$Res, $Val extends LocalSettings>
    implements $LocalSettingsCopyWith<$Res> {
  _$LocalSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalSettingsModelInitialCopyWith<$Res> {
  factory _$$LocalSettingsModelInitialCopyWith(
          _$LocalSettingsModelInitial value,
          $Res Function(_$LocalSettingsModelInitial) then) =
      __$$LocalSettingsModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalSettingsModelInitialCopyWithImpl<$Res>
    extends _$LocalSettingsCopyWithImpl<$Res, _$LocalSettingsModelInitial>
    implements _$$LocalSettingsModelInitialCopyWith<$Res> {
  __$$LocalSettingsModelInitialCopyWithImpl(_$LocalSettingsModelInitial _value,
      $Res Function(_$LocalSettingsModelInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalSettingsModelInitial implements LocalSettingsModelInitial {
  _$LocalSettingsModelInitial();

  @override
  String toString() {
    return 'LocalSettings.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSettingsModelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TimeOfDay? dailyNotificationTimeOfDay)
        initialized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TimeOfDay? dailyNotificationTimeOfDay)? initialized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TimeOfDay? dailyNotificationTimeOfDay)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSettingsModelInitial value) initial,
    required TResult Function(LocalSettingsModelInitialized value) initialized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSettingsModelInitial value)? initial,
    TResult? Function(LocalSettingsModelInitialized value)? initialized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSettingsModelInitial value)? initial,
    TResult Function(LocalSettingsModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocalSettingsModelInitial implements LocalSettings {
  factory LocalSettingsModelInitial() = _$LocalSettingsModelInitial;
}

/// @nodoc
abstract class _$$LocalSettingsModelInitializedCopyWith<$Res> {
  factory _$$LocalSettingsModelInitializedCopyWith(
          _$LocalSettingsModelInitialized value,
          $Res Function(_$LocalSettingsModelInitialized) then) =
      __$$LocalSettingsModelInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay? dailyNotificationTimeOfDay});
}

/// @nodoc
class __$$LocalSettingsModelInitializedCopyWithImpl<$Res>
    extends _$LocalSettingsCopyWithImpl<$Res, _$LocalSettingsModelInitialized>
    implements _$$LocalSettingsModelInitializedCopyWith<$Res> {
  __$$LocalSettingsModelInitializedCopyWithImpl(
      _$LocalSettingsModelInitialized _value,
      $Res Function(_$LocalSettingsModelInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyNotificationTimeOfDay = freezed,
  }) {
    return _then(_$LocalSettingsModelInitialized(
      freezed == dailyNotificationTimeOfDay
          ? _value.dailyNotificationTimeOfDay
          : dailyNotificationTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$LocalSettingsModelInitialized implements LocalSettingsModelInitialized {
  _$LocalSettingsModelInitialized(this.dailyNotificationTimeOfDay);

  @override
  final TimeOfDay? dailyNotificationTimeOfDay;

  @override
  String toString() {
    return 'LocalSettings.initialized(dailyNotificationTimeOfDay: $dailyNotificationTimeOfDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSettingsModelInitialized &&
            (identical(other.dailyNotificationTimeOfDay,
                    dailyNotificationTimeOfDay) ||
                other.dailyNotificationTimeOfDay ==
                    dailyNotificationTimeOfDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dailyNotificationTimeOfDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSettingsModelInitializedCopyWith<_$LocalSettingsModelInitialized>
      get copyWith => __$$LocalSettingsModelInitializedCopyWithImpl<
          _$LocalSettingsModelInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TimeOfDay? dailyNotificationTimeOfDay)
        initialized,
  }) {
    return initialized(dailyNotificationTimeOfDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TimeOfDay? dailyNotificationTimeOfDay)? initialized,
  }) {
    return initialized?.call(dailyNotificationTimeOfDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TimeOfDay? dailyNotificationTimeOfDay)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(dailyNotificationTimeOfDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSettingsModelInitial value) initial,
    required TResult Function(LocalSettingsModelInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSettingsModelInitial value)? initial,
    TResult? Function(LocalSettingsModelInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSettingsModelInitial value)? initial,
    TResult Function(LocalSettingsModelInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class LocalSettingsModelInitialized implements LocalSettings {
  factory LocalSettingsModelInitialized(
          final TimeOfDay? dailyNotificationTimeOfDay) =
      _$LocalSettingsModelInitialized;

  TimeOfDay? get dailyNotificationTimeOfDay;
  @JsonKey(ignore: true)
  _$$LocalSettingsModelInitializedCopyWith<_$LocalSettingsModelInitialized>
      get copyWith => throw _privateConstructorUsedError;
}
