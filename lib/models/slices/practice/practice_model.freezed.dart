// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'practice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PracticeModelTearOff {
  const _$PracticeModelTearOff();

  PracticeModelInitial initial() {
    return const PracticeModelInitial();
  }

  PracticeModelLoading loading() {
    return const PracticeModelLoading();
  }

  PracticeModelError error(String error) {
    return PracticeModelError(
      error,
    );
  }

  PracticeModelFinished finished() {
    return const PracticeModelFinished();
  }

  PracticeModelInProgress inProgress(
      List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed,
      {DateTime? nextStepTime,
      DateTime? currentStepStart}) {
    return PracticeModelInProgress(
      allImpressions,
      remainingImpressions,
      currentImpression,
      revealed,
      speechPlayed,
      nextStepTime: nextStepTime,
      currentStepStart: currentStepStart,
    );
  }
}

/// @nodoc
const $PracticeModel = _$PracticeModelTearOff();

/// @nodoc
mixin _$PracticeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() finished,
    required TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)
        inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PracticeModelInitial value) initial,
    required TResult Function(PracticeModelLoading value) loading,
    required TResult Function(PracticeModelError value) error,
    required TResult Function(PracticeModelFinished value) finished,
    required TResult Function(PracticeModelInProgress value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeModelCopyWith<$Res> {
  factory $PracticeModelCopyWith(
          PracticeModel value, $Res Function(PracticeModel) then) =
      _$PracticeModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelCopyWith<$Res> {
  _$PracticeModelCopyWithImpl(this._value, this._then);

  final PracticeModel _value;
  // ignore: unused_field
  final $Res Function(PracticeModel) _then;
}

/// @nodoc
abstract class $PracticeModelInitialCopyWith<$Res> {
  factory $PracticeModelInitialCopyWith(PracticeModelInitial value,
          $Res Function(PracticeModelInitial) then) =
      _$PracticeModelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PracticeModelInitialCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelInitialCopyWith<$Res> {
  _$PracticeModelInitialCopyWithImpl(
      PracticeModelInitial _value, $Res Function(PracticeModelInitial) _then)
      : super(_value, (v) => _then(v as PracticeModelInitial));

  @override
  PracticeModelInitial get _value => super._value as PracticeModelInitial;
}

/// @nodoc

class _$PracticeModelInitial extends PracticeModelInitial {
  const _$PracticeModelInitial() : super._();

  @override
  String toString() {
    return 'PracticeModel.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PracticeModelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() finished,
    required TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)
        inProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
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
    required TResult Function(PracticeModelInitial value) initial,
    required TResult Function(PracticeModelLoading value) loading,
    required TResult Function(PracticeModelError value) error,
    required TResult Function(PracticeModelFinished value) finished,
    required TResult Function(PracticeModelInProgress value) inProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PracticeModelInitial extends PracticeModel {
  const factory PracticeModelInitial() = _$PracticeModelInitial;
  const PracticeModelInitial._() : super._();
}

/// @nodoc
abstract class $PracticeModelLoadingCopyWith<$Res> {
  factory $PracticeModelLoadingCopyWith(PracticeModelLoading value,
          $Res Function(PracticeModelLoading) then) =
      _$PracticeModelLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PracticeModelLoadingCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelLoadingCopyWith<$Res> {
  _$PracticeModelLoadingCopyWithImpl(
      PracticeModelLoading _value, $Res Function(PracticeModelLoading) _then)
      : super(_value, (v) => _then(v as PracticeModelLoading));

  @override
  PracticeModelLoading get _value => super._value as PracticeModelLoading;
}

/// @nodoc

class _$PracticeModelLoading extends PracticeModelLoading {
  const _$PracticeModelLoading() : super._();

  @override
  String toString() {
    return 'PracticeModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PracticeModelLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() finished,
    required TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)
        inProgress,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PracticeModelInitial value) initial,
    required TResult Function(PracticeModelLoading value) loading,
    required TResult Function(PracticeModelError value) error,
    required TResult Function(PracticeModelFinished value) finished,
    required TResult Function(PracticeModelInProgress value) inProgress,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PracticeModelLoading extends PracticeModel {
  const factory PracticeModelLoading() = _$PracticeModelLoading;
  const PracticeModelLoading._() : super._();
}

/// @nodoc
abstract class $PracticeModelErrorCopyWith<$Res> {
  factory $PracticeModelErrorCopyWith(
          PracticeModelError value, $Res Function(PracticeModelError) then) =
      _$PracticeModelErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$PracticeModelErrorCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelErrorCopyWith<$Res> {
  _$PracticeModelErrorCopyWithImpl(
      PracticeModelError _value, $Res Function(PracticeModelError) _then)
      : super(_value, (v) => _then(v as PracticeModelError));

  @override
  PracticeModelError get _value => super._value as PracticeModelError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(PracticeModelError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PracticeModelError extends PracticeModelError {
  const _$PracticeModelError(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'PracticeModel.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PracticeModelError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $PracticeModelErrorCopyWith<PracticeModelError> get copyWith =>
      _$PracticeModelErrorCopyWithImpl<PracticeModelError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() finished,
    required TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)
        inProgress,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PracticeModelInitial value) initial,
    required TResult Function(PracticeModelLoading value) loading,
    required TResult Function(PracticeModelError value) error,
    required TResult Function(PracticeModelFinished value) finished,
    required TResult Function(PracticeModelInProgress value) inProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PracticeModelError extends PracticeModel {
  const factory PracticeModelError(String error) = _$PracticeModelError;
  const PracticeModelError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  $PracticeModelErrorCopyWith<PracticeModelError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeModelFinishedCopyWith<$Res> {
  factory $PracticeModelFinishedCopyWith(PracticeModelFinished value,
          $Res Function(PracticeModelFinished) then) =
      _$PracticeModelFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PracticeModelFinishedCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelFinishedCopyWith<$Res> {
  _$PracticeModelFinishedCopyWithImpl(
      PracticeModelFinished _value, $Res Function(PracticeModelFinished) _then)
      : super(_value, (v) => _then(v as PracticeModelFinished));

  @override
  PracticeModelFinished get _value => super._value as PracticeModelFinished;
}

/// @nodoc

class _$PracticeModelFinished extends PracticeModelFinished {
  const _$PracticeModelFinished() : super._();

  @override
  String toString() {
    return 'PracticeModel.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PracticeModelFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() finished,
    required TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)
        inProgress,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PracticeModelInitial value) initial,
    required TResult Function(PracticeModelLoading value) loading,
    required TResult Function(PracticeModelError value) error,
    required TResult Function(PracticeModelFinished value) finished,
    required TResult Function(PracticeModelInProgress value) inProgress,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class PracticeModelFinished extends PracticeModel {
  const factory PracticeModelFinished() = _$PracticeModelFinished;
  const PracticeModelFinished._() : super._();
}

/// @nodoc
abstract class $PracticeModelInProgressCopyWith<$Res> {
  factory $PracticeModelInProgressCopyWith(PracticeModelInProgress value,
          $Res Function(PracticeModelInProgress) then) =
      _$PracticeModelInProgressCopyWithImpl<$Res>;
  $Res call(
      {List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed,
      DateTime? nextStepTime,
      DateTime? currentStepStart});

  $ImpressionCopyWith<$Res> get currentImpression;
}

/// @nodoc
class _$PracticeModelInProgressCopyWithImpl<$Res>
    extends _$PracticeModelCopyWithImpl<$Res>
    implements $PracticeModelInProgressCopyWith<$Res> {
  _$PracticeModelInProgressCopyWithImpl(PracticeModelInProgress _value,
      $Res Function(PracticeModelInProgress) _then)
      : super(_value, (v) => _then(v as PracticeModelInProgress));

  @override
  PracticeModelInProgress get _value => super._value as PracticeModelInProgress;

  @override
  $Res call({
    Object? allImpressions = freezed,
    Object? remainingImpressions = freezed,
    Object? currentImpression = freezed,
    Object? revealed = freezed,
    Object? speechPlayed = freezed,
    Object? nextStepTime = freezed,
    Object? currentStepStart = freezed,
  }) {
    return _then(PracticeModelInProgress(
      allImpressions == freezed
          ? _value.allImpressions
          : allImpressions // ignore: cast_nullable_to_non_nullable
              as List<Impression>,
      remainingImpressions == freezed
          ? _value.remainingImpressions
          : remainingImpressions // ignore: cast_nullable_to_non_nullable
              as List<Impression>,
      currentImpression == freezed
          ? _value.currentImpression
          : currentImpression // ignore: cast_nullable_to_non_nullable
              as Impression,
      revealed == freezed
          ? _value.revealed
          : revealed // ignore: cast_nullable_to_non_nullable
              as bool,
      speechPlayed == freezed
          ? _value.speechPlayed
          : speechPlayed // ignore: cast_nullable_to_non_nullable
              as bool,
      nextStepTime: nextStepTime == freezed
          ? _value.nextStepTime
          : nextStepTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentStepStart: currentStepStart == freezed
          ? _value.currentStepStart
          : currentStepStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $ImpressionCopyWith<$Res> get currentImpression {
    return $ImpressionCopyWith<$Res>(_value.currentImpression, (value) {
      return _then(_value.copyWith(currentImpression: value));
    });
  }
}

/// @nodoc

class _$PracticeModelInProgress extends PracticeModelInProgress {
  const _$PracticeModelInProgress(
      this.allImpressions,
      this.remainingImpressions,
      this.currentImpression,
      this.revealed,
      this.speechPlayed,
      {this.nextStepTime,
      this.currentStepStart})
      : super._();

  @override
  final List<Impression> allImpressions;
  @override
  final List<Impression> remainingImpressions;
  @override
  final Impression currentImpression;
  @override
  final bool revealed;
  @override
  final bool speechPlayed;
  @override
  final DateTime? nextStepTime;
  @override
  final DateTime? currentStepStart;

  @override
  String toString() {
    return 'PracticeModel.inProgress(allImpressions: $allImpressions, remainingImpressions: $remainingImpressions, currentImpression: $currentImpression, revealed: $revealed, speechPlayed: $speechPlayed, nextStepTime: $nextStepTime, currentStepStart: $currentStepStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PracticeModelInProgress &&
            const DeepCollectionEquality()
                .equals(other.allImpressions, allImpressions) &&
            const DeepCollectionEquality()
                .equals(other.remainingImpressions, remainingImpressions) &&
            const DeepCollectionEquality()
                .equals(other.currentImpression, currentImpression) &&
            const DeepCollectionEquality().equals(other.revealed, revealed) &&
            const DeepCollectionEquality()
                .equals(other.speechPlayed, speechPlayed) &&
            const DeepCollectionEquality()
                .equals(other.nextStepTime, nextStepTime) &&
            const DeepCollectionEquality()
                .equals(other.currentStepStart, currentStepStart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allImpressions),
      const DeepCollectionEquality().hash(remainingImpressions),
      const DeepCollectionEquality().hash(currentImpression),
      const DeepCollectionEquality().hash(revealed),
      const DeepCollectionEquality().hash(speechPlayed),
      const DeepCollectionEquality().hash(nextStepTime),
      const DeepCollectionEquality().hash(currentStepStart));

  @JsonKey(ignore: true)
  @override
  $PracticeModelInProgressCopyWith<PracticeModelInProgress> get copyWith =>
      _$PracticeModelInProgressCopyWithImpl<PracticeModelInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() finished,
    required TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)
        inProgress,
  }) {
    return inProgress(allImpressions, remainingImpressions, currentImpression,
        revealed, speechPlayed, nextStepTime, currentStepStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
  }) {
    return inProgress?.call(
        allImpressions,
        remainingImpressions,
        currentImpression,
        revealed,
        speechPlayed,
        nextStepTime,
        currentStepStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? finished,
    TResult Function(
            List<Impression> allImpressions,
            List<Impression> remainingImpressions,
            Impression currentImpression,
            bool revealed,
            bool speechPlayed,
            DateTime? nextStepTime,
            DateTime? currentStepStart)?
        inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(allImpressions, remainingImpressions, currentImpression,
          revealed, speechPlayed, nextStepTime, currentStepStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PracticeModelInitial value) initial,
    required TResult Function(PracticeModelLoading value) loading,
    required TResult Function(PracticeModelError value) error,
    required TResult Function(PracticeModelFinished value) finished,
    required TResult Function(PracticeModelInProgress value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PracticeModelInitial value)? initial,
    TResult Function(PracticeModelLoading value)? loading,
    TResult Function(PracticeModelError value)? error,
    TResult Function(PracticeModelFinished value)? finished,
    TResult Function(PracticeModelInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class PracticeModelInProgress extends PracticeModel {
  const factory PracticeModelInProgress(
      List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed,
      {DateTime? nextStepTime,
      DateTime? currentStepStart}) = _$PracticeModelInProgress;
  const PracticeModelInProgress._() : super._();

  List<Impression> get allImpressions;
  List<Impression> get remainingImpressions;
  Impression get currentImpression;
  bool get revealed;
  bool get speechPlayed;
  DateTime? get nextStepTime;
  DateTime? get currentStepStart;
  @JsonKey(ignore: true)
  $PracticeModelInProgressCopyWith<PracticeModelInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
