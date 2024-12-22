// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_statistics_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserStatisticsDay _$UserStatisticsDayFromJson(Map<String, dynamic> json) {
  return UserStatisticsDayInitialized.fromJson(json);
}

/// @nodoc
mixin _$UserStatisticsDay {
  DateTime get date => throw _privateConstructorUsedError;
  int get cardsAdded => throw _privateConstructorUsedError;
  int get cardsDiscovered => throw _privateConstructorUsedError;

  /// Serializes this UserStatisticsDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatisticsDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatisticsDayCopyWith<UserStatisticsDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatisticsDayCopyWith<$Res> {
  factory $UserStatisticsDayCopyWith(
          UserStatisticsDay value, $Res Function(UserStatisticsDay) then) =
      _$UserStatisticsDayCopyWithImpl<$Res, UserStatisticsDay>;
  @useResult
  $Res call({DateTime date, int cardsAdded, int cardsDiscovered});
}

/// @nodoc
class _$UserStatisticsDayCopyWithImpl<$Res, $Val extends UserStatisticsDay>
    implements $UserStatisticsDayCopyWith<$Res> {
  _$UserStatisticsDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatisticsDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? cardsAdded = null,
    Object? cardsDiscovered = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cardsAdded: null == cardsAdded
          ? _value.cardsAdded
          : cardsAdded // ignore: cast_nullable_to_non_nullable
              as int,
      cardsDiscovered: null == cardsDiscovered
          ? _value.cardsDiscovered
          : cardsDiscovered // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatisticsDayInitializedImplCopyWith<$Res>
    implements $UserStatisticsDayCopyWith<$Res> {
  factory _$$UserStatisticsDayInitializedImplCopyWith(
          _$UserStatisticsDayInitializedImpl value,
          $Res Function(_$UserStatisticsDayInitializedImpl) then) =
      __$$UserStatisticsDayInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int cardsAdded, int cardsDiscovered});
}

/// @nodoc
class __$$UserStatisticsDayInitializedImplCopyWithImpl<$Res>
    extends _$UserStatisticsDayCopyWithImpl<$Res,
        _$UserStatisticsDayInitializedImpl>
    implements _$$UserStatisticsDayInitializedImplCopyWith<$Res> {
  __$$UserStatisticsDayInitializedImplCopyWithImpl(
      _$UserStatisticsDayInitializedImpl _value,
      $Res Function(_$UserStatisticsDayInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStatisticsDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? cardsAdded = null,
    Object? cardsDiscovered = null,
  }) {
    return _then(_$UserStatisticsDayInitializedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == cardsAdded
          ? _value.cardsAdded
          : cardsAdded // ignore: cast_nullable_to_non_nullable
              as int,
      null == cardsDiscovered
          ? _value.cardsDiscovered
          : cardsDiscovered // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatisticsDayInitializedImpl
    implements UserStatisticsDayInitialized {
  _$UserStatisticsDayInitializedImpl(
      this.date, this.cardsAdded, this.cardsDiscovered);

  factory _$UserStatisticsDayInitializedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserStatisticsDayInitializedImplFromJson(json);

  @override
  final DateTime date;
  @override
  final int cardsAdded;
  @override
  final int cardsDiscovered;

  @override
  String toString() {
    return 'UserStatisticsDay(date: $date, cardsAdded: $cardsAdded, cardsDiscovered: $cardsDiscovered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatisticsDayInitializedImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.cardsAdded, cardsAdded) ||
                other.cardsAdded == cardsAdded) &&
            (identical(other.cardsDiscovered, cardsDiscovered) ||
                other.cardsDiscovered == cardsDiscovered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, cardsAdded, cardsDiscovered);

  /// Create a copy of UserStatisticsDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatisticsDayInitializedImplCopyWith<
          _$UserStatisticsDayInitializedImpl>
      get copyWith => __$$UserStatisticsDayInitializedImplCopyWithImpl<
          _$UserStatisticsDayInitializedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatisticsDayInitializedImplToJson(
      this,
    );
  }
}

abstract class UserStatisticsDayInitialized implements UserStatisticsDay {
  factory UserStatisticsDayInitialized(
      final DateTime date,
      final int cardsAdded,
      final int cardsDiscovered) = _$UserStatisticsDayInitializedImpl;

  factory UserStatisticsDayInitialized.fromJson(Map<String, dynamic> json) =
      _$UserStatisticsDayInitializedImpl.fromJson;

  @override
  DateTime get date;
  @override
  int get cardsAdded;
  @override
  int get cardsDiscovered;

  /// Create a copy of UserStatisticsDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatisticsDayInitializedImplCopyWith<
          _$UserStatisticsDayInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
