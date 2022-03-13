// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'impressions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImpressionsResponse _$ImpressionsResponseFromJson(Map<String, dynamic> json) {
  return Initialized.fromJson(json);
}

/// @nodoc
class _$ImpressionsResponseTearOff {
  const _$ImpressionsResponseTearOff();

  Initialized initialized(UserStatistics userStats) {
    return Initialized(
      userStats,
    );
  }

  ImpressionsResponse fromJson(Map<String, Object?> json) {
    return ImpressionsResponse.fromJson(json);
  }
}

/// @nodoc
const $ImpressionsResponse = _$ImpressionsResponseTearOff();

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
    TResult Function(UserStatistics userStats)? initialized,
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
  $ImpressionsResponseCopyWith<ImpressionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImpressionsResponseCopyWith<$Res> {
  factory $ImpressionsResponseCopyWith(
          ImpressionsResponse value, $Res Function(ImpressionsResponse) then) =
      _$ImpressionsResponseCopyWithImpl<$Res>;
  $Res call({UserStatistics userStats});

  $UserStatisticsCopyWith<$Res> get userStats;
}

/// @nodoc
class _$ImpressionsResponseCopyWithImpl<$Res>
    implements $ImpressionsResponseCopyWith<$Res> {
  _$ImpressionsResponseCopyWithImpl(this._value, this._then);

  final ImpressionsResponse _value;
  // ignore: unused_field
  final $Res Function(ImpressionsResponse) _then;

  @override
  $Res call({
    Object? userStats = freezed,
  }) {
    return _then(_value.copyWith(
      userStats: userStats == freezed
          ? _value.userStats
          : userStats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
    ));
  }

  @override
  $UserStatisticsCopyWith<$Res> get userStats {
    return $UserStatisticsCopyWith<$Res>(_value.userStats, (value) {
      return _then(_value.copyWith(userStats: value));
    });
  }
}

/// @nodoc
abstract class $InitializedCopyWith<$Res>
    implements $ImpressionsResponseCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({UserStatistics userStats});

  @override
  $UserStatisticsCopyWith<$Res> get userStats;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$ImpressionsResponseCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? userStats = freezed,
  }) {
    return _then(Initialized(
      userStats == freezed
          ? _value.userStats
          : userStats // ignore: cast_nullable_to_non_nullable
              as UserStatistics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Initialized implements Initialized {
  _$Initialized(this.userStats);

  factory _$Initialized.fromJson(Map<String, dynamic> json) =>
      _$$InitializedFromJson(json);

  @override
  final UserStatistics userStats;

  @override
  String toString() {
    return 'ImpressionsResponse.initialized(userStats: $userStats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality().equals(other.userStats, userStats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userStats));

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

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
    TResult Function(UserStatistics userStats)? initialized,
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

abstract class Initialized implements ImpressionsResponse {
  factory Initialized(UserStatistics userStats) = _$Initialized;

  factory Initialized.fromJson(Map<String, dynamic> json) =
      _$Initialized.fromJson;

  @override
  UserStatistics get userStats;
  @override
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}
