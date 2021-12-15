// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'practice.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PracticeModelTearOff {
  const _$PracticeModelTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Error error(String error) {
    return Error(
      error,
    );
  }

  Finished finished() {
    return const Finished();
  }

  InProgress inProgress(
      List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed) {
    return InProgress(
      allImpressions,
      remainingImpressions,
      currentImpression,
      revealed,
      speechPlayed,
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
            bool speechPlayed)
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
            bool speechPlayed)?
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
            bool speechPlayed)?
        inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Finished value) finished,
    required TResult Function(InProgress value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
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
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PracticeModelCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial extends Initial with DiagnosticableTreeMixin {
  const _$Initial() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PracticeModel.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PracticeModel.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
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
            bool speechPlayed)
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
            bool speechPlayed)?
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
            bool speechPlayed)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Finished value) finished,
    required TResult Function(InProgress value) inProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends PracticeModel {
  const factory Initial() = _$Initial;
  const Initial._() : super._();
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PracticeModelCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading extends Loading with DiagnosticableTreeMixin {
  const _$Loading() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PracticeModel.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PracticeModel.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
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
            bool speechPlayed)
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
            bool speechPlayed)?
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
            bool speechPlayed)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Finished value) finished,
    required TResult Function(InProgress value) inProgress,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading extends PracticeModel {
  const factory Loading() = _$Loading;
  const Loading._() : super._();
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$PracticeModelCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error extends Error with DiagnosticableTreeMixin {
  const _$Error(this.error) : super._();

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PracticeModel.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PracticeModel.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

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
            bool speechPlayed)
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
            bool speechPlayed)?
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
            bool speechPlayed)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Finished value) finished,
    required TResult Function(InProgress value) inProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error extends PracticeModel {
  const factory Error(String error) = _$Error;
  const Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishedCopyWith<$Res> {
  factory $FinishedCopyWith(Finished value, $Res Function(Finished) then) =
      _$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FinishedCopyWithImpl<$Res> extends _$PracticeModelCopyWithImpl<$Res>
    implements $FinishedCopyWith<$Res> {
  _$FinishedCopyWithImpl(Finished _value, $Res Function(Finished) _then)
      : super(_value, (v) => _then(v as Finished));

  @override
  Finished get _value => super._value as Finished;
}

/// @nodoc

class _$Finished extends Finished with DiagnosticableTreeMixin {
  const _$Finished() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PracticeModel.finished()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PracticeModel.finished'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Finished);
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
            bool speechPlayed)
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
            bool speechPlayed)?
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
            bool speechPlayed)?
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Finished value) finished,
    required TResult Function(InProgress value) inProgress,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished extends PracticeModel {
  const factory Finished() = _$Finished;
  const Finished._() : super._();
}

/// @nodoc
abstract class $InProgressCopyWith<$Res> {
  factory $InProgressCopyWith(
          InProgress value, $Res Function(InProgress) then) =
      _$InProgressCopyWithImpl<$Res>;
  $Res call(
      {List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed});

  $ImpressionCopyWith<$Res> get currentImpression;
}

/// @nodoc
class _$InProgressCopyWithImpl<$Res> extends _$PracticeModelCopyWithImpl<$Res>
    implements $InProgressCopyWith<$Res> {
  _$InProgressCopyWithImpl(InProgress _value, $Res Function(InProgress) _then)
      : super(_value, (v) => _then(v as InProgress));

  @override
  InProgress get _value => super._value as InProgress;

  @override
  $Res call({
    Object? allImpressions = freezed,
    Object? remainingImpressions = freezed,
    Object? currentImpression = freezed,
    Object? revealed = freezed,
    Object? speechPlayed = freezed,
  }) {
    return _then(InProgress(
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

class _$InProgress extends InProgress with DiagnosticableTreeMixin {
  const _$InProgress(this.allImpressions, this.remainingImpressions,
      this.currentImpression, this.revealed, this.speechPlayed)
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PracticeModel.inProgress(allImpressions: $allImpressions, remainingImpressions: $remainingImpressions, currentImpression: $currentImpression, revealed: $revealed, speechPlayed: $speechPlayed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PracticeModel.inProgress'))
      ..add(DiagnosticsProperty('allImpressions', allImpressions))
      ..add(DiagnosticsProperty('remainingImpressions', remainingImpressions))
      ..add(DiagnosticsProperty('currentImpression', currentImpression))
      ..add(DiagnosticsProperty('revealed', revealed))
      ..add(DiagnosticsProperty('speechPlayed', speechPlayed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InProgress &&
            const DeepCollectionEquality()
                .equals(other.allImpressions, allImpressions) &&
            const DeepCollectionEquality()
                .equals(other.remainingImpressions, remainingImpressions) &&
            (identical(other.currentImpression, currentImpression) ||
                other.currentImpression == currentImpression) &&
            (identical(other.revealed, revealed) ||
                other.revealed == revealed) &&
            (identical(other.speechPlayed, speechPlayed) ||
                other.speechPlayed == speechPlayed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allImpressions),
      const DeepCollectionEquality().hash(remainingImpressions),
      currentImpression,
      revealed,
      speechPlayed);

  @JsonKey(ignore: true)
  @override
  $InProgressCopyWith<InProgress> get copyWith =>
      _$InProgressCopyWithImpl<InProgress>(this, _$identity);

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
            bool speechPlayed)
        inProgress,
  }) {
    return inProgress(allImpressions, remainingImpressions, currentImpression,
        revealed, speechPlayed);
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
            bool speechPlayed)?
        inProgress,
  }) {
    return inProgress?.call(allImpressions, remainingImpressions,
        currentImpression, revealed, speechPlayed);
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
            bool speechPlayed)?
        inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(allImpressions, remainingImpressions, currentImpression,
          revealed, speechPlayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Finished value) finished,
    required TResult Function(InProgress value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Finished value)? finished,
    TResult Function(InProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress extends PracticeModel {
  const factory InProgress(
      List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed) = _$InProgress;
  const InProgress._() : super._();

  List<Impression> get allImpressions;
  List<Impression> get remainingImpressions;
  Impression get currentImpression;
  bool get revealed;
  bool get speechPlayed;
  @JsonKey(ignore: true)
  $InProgressCopyWith<InProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
