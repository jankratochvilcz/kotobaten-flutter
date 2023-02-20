// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PracticeResponse _$PracticeResponseFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

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
    TResult? Function(List<Impression> impressions)? initialized,
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
  $PracticeResponseCopyWith<PracticeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticeResponseCopyWith<$Res> {
  factory $PracticeResponseCopyWith(
          PracticeResponse value, $Res Function(PracticeResponse) then) =
      _$PracticeResponseCopyWithImpl<$Res, PracticeResponse>;
  @useResult
  $Res call({List<Impression> impressions});
}

/// @nodoc
class _$PracticeResponseCopyWithImpl<$Res, $Val extends PracticeResponse>
    implements $PracticeResponseCopyWith<$Res> {
  _$PracticeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impressions = null,
  }) {
    return _then(_value.copyWith(
      impressions: null == impressions
          ? _value.impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as List<Impression>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializedCopyWith<$Res>
    implements $PracticeResponseCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Impression> impressions});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$PracticeResponseCopyWithImpl<$Res, _$Initialized>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impressions = null,
  }) {
    return _then(_$Initialized(
      null == impressions
          ? _value._impressions
          : impressions // ignore: cast_nullable_to_non_nullable
              as List<Impression>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Initialized implements Initialized {
  _$Initialized(final List<Impression> impressions)
      : _impressions = impressions;

  factory _$Initialized.fromJson(Map<String, dynamic> json) =>
      _$$InitializedFromJson(json);

  final List<Impression> _impressions;
  @override
  List<Impression> get impressions {
    if (_impressions is EqualUnmodifiableListView) return _impressions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_impressions);
  }

  @override
  String toString() {
    return 'PracticeResponse.initialized(impressions: $impressions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            const DeepCollectionEquality()
                .equals(other._impressions, _impressions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_impressions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

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
    TResult? Function(List<Impression> impressions)? initialized,
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
    return _$$InitializedToJson(
      this,
    );
  }
}

abstract class Initialized implements PracticeResponse {
  factory Initialized(final List<Impression> impressions) = _$Initialized;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$Initialized.fromJson;

  @override
  List<Impression> get impressions;
  @override
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
