// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'impressions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImpressionsResponse _$ImpressionsResponseFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
mixin _$ImpressionsResponse {
  UserStatistics get userStats => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserStatistics userStats) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserStatistics userStats)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserStatistics userStats)? initialized,
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

  /// Serializes this ImpressionsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImpressionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImpressionsResponseCopyWith<ImpressionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpressionsResponseCopyWith<$Res> {
  factory $ImpressionsResponseCopyWith(
          ImpressionsResponse value, $Res Function(ImpressionsResponse) then) =
      _$ImpressionsResponseCopyWithImpl<$Res, ImpressionsResponse>;
  @useResult
  $Res call({UserStatistics userStats});

  $UserStatisticsCopyWith<$Res> get userStats;
}

/// @nodoc
class _$ImpressionsResponseCopyWithImpl<$Res, $Val extends ImpressionsResponse>
    implements $ImpressionsResponseCopyWith<$Res> {
  _$ImpressionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImpressionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userStats = null,
  }) {
    return _then(_value.copyWith(
      userStats: null == userStats
          ? _value.userStats
          : userStats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
    ) as $Val);
  }

  /// Create a copy of ImpressionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStatisticsCopyWith<$Res> get userStats {
    return $UserStatisticsCopyWith<$Res>(_value.userStats, (value) {
      return _then(_value.copyWith(userStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res>
    implements $ImpressionsResponseCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStatistics userStats});

  @override
  $UserStatisticsCopyWith<$Res> get userStats;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ImpressionsResponseCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImpressionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userStats = null,
  }) {
    return _then(_$InitializedImpl(
      null == userStats
          ? _value.userStats
          : userStats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedImpl implements Initialized {
  _$InitializedImpl(this.userStats);

  factory _$InitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializedImplFromJson(json);

  @override
  final UserStatistics userStats;

  @override
  String toString() {
    return 'ImpressionsResponse.initialized(userStats: $userStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.userStats, userStats) ||
                other.userStats == userStats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userStats);

  /// Create a copy of ImpressionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserStatistics userStats) initialized,
  }) {
    return initialized(userStats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserStatistics userStats)? initialized,
  }) {
    return initialized?.call(userStats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserStatistics userStats)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(userStats);
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

abstract class Initialized implements ImpressionsResponse {
  factory Initialized(final UserStatistics userStats) = _$InitializedImpl;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$InitializedImpl.fromJson;

  @override
  UserStatistics get userStats;

  /// Create a copy of ImpressionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
