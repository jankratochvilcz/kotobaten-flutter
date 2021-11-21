// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'practice_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PracticeResponse _$PracticeResponseFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
class _$PracticeResponseTearOff {
  const _$PracticeResponseTearOff();

  Initialized initialized(List<Impression> impressions) {
    return Initialized(
      impressions,
    );
  }

  PracticeResponse fromJson(Map<String, Object?> json) {
    return PracticeResponse.fromJson(json);
  }
}

/// @nodoc
const $PracticeResponse = _$PracticeResponseTearOff();

/// @nodoc
mixin _$PracticeResponse {
  List<Impression> get impressions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Impression> impressions) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Impression> impressions)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Impression> impressions)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PracticeResponseCopyWith<PracticeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeResponseCopyWith<$Res> {
  factory $PracticeResponseCopyWith(
          PracticeResponse value, $Res Function(PracticeResponse) then) =
      _$PracticeResponseCopyWithImpl<$Res>;
  $Res call({List<Impression> impressions});
}

/// @nodoc
class _$PracticeResponseCopyWithImpl<$Res>
    implements $PracticeResponseCopyWith<$Res> {
  _$PracticeResponseCopyWithImpl(this._value, this._then);

  final PracticeResponse _value;
  // ignore: unused_field
  final $Res Function(PracticeResponse) _then;

  @override
  $Res call({
    Object? impressions = freezed,
  }) {
    return _then(_value.copyWith(
      impressions: impressions == freezed
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as List<Impression>,
    ));
  }
}

/// @nodoc
abstract class $InitializedCopyWith<$Res>
    implements $PracticeResponseCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({List<Impression> impressions});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$PracticeResponseCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? impressions = freezed,
  }) {
    return _then(Initialized(
      impressions == freezed
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as List<Impression>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Initialized implements Initialized {
  _$Initialized(this.impressions);

  factory _$Initialized.fromJson(Map<String, dynamic> json) =>
      _$$InitializedFromJson(json);

  @override
  final List<Impression> impressions;

  @override
  String toString() {
    return 'PracticeResponse.initialized(impressions: $impressions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality()
                .equals(other.impressions, impressions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(impressions));

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Impression> impressions) initialized,
  }) {
    return initialized(impressions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Impression> impressions)? initialized,
  }) {
    return initialized?.call(impressions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Impression> impressions)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(impressions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitializedToJson(this);
  }
}

abstract class Initialized implements PracticeResponse {
  factory Initialized(List<Impression> impressions) = _$Initialized;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$Initialized.fromJson;

  @override
  List<Impression> get impressions;
  @override
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
