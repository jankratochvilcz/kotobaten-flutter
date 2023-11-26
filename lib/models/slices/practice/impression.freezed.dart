// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'impression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Impression _$ImpressionFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

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
    TResult? Function(CardInitialized card, ImpressionType impressionType,
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
    TResult? Function(Initialized value)? initialized,
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
      _$ImpressionCopyWithImpl<$Res, Impression>;
  @useResult
  $Res call(
      {CardInitialized card,
      ImpressionType impressionType,
      String? speechPath});
}

/// @nodoc
class _$ImpressionCopyWithImpl<$Res, $Val extends Impression>
    implements $ImpressionCopyWith<$Res> {
  _$ImpressionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = freezed,
    Object? impressionType = null,
    Object? speechPath = freezed,
  }) {
    return _then(_value.copyWith(
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardInitialized,
      impressionType: null == impressionType
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      speechPath: freezed == speechPath
          ? _value.speechPath
          : speechPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res>
    implements $ImpressionCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CardInitialized card,
      ImpressionType impressionType,
      String? speechPath});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ImpressionCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = freezed,
    Object? impressionType = null,
    Object? speechPath = freezed,
  }) {
    return _then(_$InitializedImpl(
      freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardInitialized,
      null == impressionType
          ? _value.impressionType
          : impressionType // ignore: cast_nullable_to_non_nullable
              as ImpressionType,
      freezed == speechPath
          ? _value.speechPath
          : speechPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedImpl implements Initialized {
  _$InitializedImpl(this.card, this.impressionType, this.speechPath);

  factory _$InitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializedImplFromJson(json);

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
            other is _$InitializedImpl &&
            const DeepCollectionEquality().equals(other.card, card) &&
            (identical(other.impressionType, impressionType) ||
                other.impressionType == impressionType) &&
            (identical(other.speechPath, speechPath) ||
                other.speechPath == speechPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(card), impressionType, speechPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

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
    TResult? Function(CardInitialized card, ImpressionType impressionType,
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
    TResult? Function(Initialized value)? initialized,
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
    return _$$InitializedImplToJson(
      this,
    );
  }
}

abstract class Initialized implements Impression {
  factory Initialized(
      final CardInitialized card,
      final ImpressionType impressionType,
      final String? speechPath) = _$InitializedImpl;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$InitializedImpl.fromJson;

  @override
  CardInitialized get card;
  @override
  ImpressionType get impressionType;
  @override
  String? get speechPath;
  @override
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
