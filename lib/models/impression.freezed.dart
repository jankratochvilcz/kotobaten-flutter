// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'impression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Impression _$ImpressionFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
class _$ImpressionTearOff {
  const _$ImpressionTearOff();

  Initialized initialized(
      CardInitialized card, ImpressionType impressionType, String? speechPath) {
    return Initialized(
      card,
      impressionType,
      speechPath,
    );
  }

  Impression fromJson(Map<String, Object?> json) {
    return Impression.fromJson(json);
  }
}

/// @nodoc
const $Impression = _$ImpressionTearOff();

/// @nodoc
mixin _$Impression {
  CardInitialized get card => throw _privateConstructorUsedError;
  ImpressionType get impressionType => throw _privateConstructorUsedError;
  String? get speechPath => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardInitialized card,
            ImpressionType impressionType, String? speechPath)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CardInitialized card, ImpressionType impressionType,
            String? speechPath)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardInitialized card, ImpressionType impressionType,
            String? speechPath)?
        initialized,
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
  $ImpressionCopyWith<Impression> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpressionCopyWith<$Res> {
  factory $ImpressionCopyWith(
          Impression value, $Res Function(Impression) then) =
      _$ImpressionCopyWithImpl<$Res>;
  $Res call(
      {CardInitialized card,
      ImpressionType impressionType,
      String? speechPath});
}

/// @nodoc
class _$ImpressionCopyWithImpl<$Res> implements $ImpressionCopyWith<$Res> {
  _$ImpressionCopyWithImpl(this._value, this._then);

  final Impression _value;
  // ignore: unused_field
  final $Res Function(Impression) _then;

  @override
  $Res call({
    Object? card = freezed,
    Object? impressionType = freezed,
    Object? speechPath = freezed,
  }) {
    return _then(_value.copyWith(
      card: card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardInitialized,
      impressionType: impressionType == freezed
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      speechPath: speechPath == freezed
          ? _value.speechPath
          : speechPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> implements $ImpressionCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {CardInitialized card,
      ImpressionType impressionType,
      String? speechPath});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$ImpressionCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? card = freezed,
    Object? impressionType = freezed,
    Object? speechPath = freezed,
  }) {
    return _then(Initialized(
      card == freezed
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardInitialized,
      impressionType == freezed
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      speechPath == freezed
          ? _value.speechPath
          : speechPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Initialized implements Initialized {
  _$Initialized(this.card, this.impressionType, this.speechPath);

  factory _$Initialized.fromJson(Map<String, dynamic> json) =>
      _$$InitializedFromJson(json);

  @override
  final CardInitialized card;
  @override
  final ImpressionType impressionType;
  @override
  final String? speechPath;

  @override
  String toString() {
    return 'Impression.initialized(card: $card, impressionType: $impressionType, speechPath: $speechPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality().equals(other.card, card) &&
            (identical(other.impressionType, impressionType) ||
                other.impressionType == impressionType) &&
            (identical(other.speechPath, speechPath) ||
                other.speechPath == speechPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(card), impressionType, speechPath);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardInitialized card,
            ImpressionType impressionType, String? speechPath)
        initialized,
  }) {
    return initialized(card, impressionType, speechPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CardInitialized card, ImpressionType impressionType,
            String? speechPath)?
        initialized,
  }) {
    return initialized?.call(card, impressionType, speechPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardInitialized card, ImpressionType impressionType,
            String? speechPath)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(card, impressionType, speechPath);
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

abstract class Initialized implements Impression {
  factory Initialized(CardInitialized card, ImpressionType impressionType,
      String? speechPath) = _$Initialized;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$Initialized.fromJson;

  @override
  CardInitialized get card;
  @override
  ImpressionType get impressionType;
  @override
  String? get speechPath;
  @override
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
