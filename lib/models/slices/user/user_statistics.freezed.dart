// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserStatistics _$UserStatisticsFromJson(Map<String, dynamic> json) {
  return UserStatisticsInitialized.fromJson(json);
}

/// @nodoc
mixin _$UserStatistics {
  int get leftToPractice => throw _privateConstructorUsedError;
  int get discoveredToday => throw _privateConstructorUsedError;
  int get discoveredWeek => throw _privateConstructorUsedError;
  int get discoveredMonth => throw _privateConstructorUsedError;
  int get addedWeek => throw _privateConstructorUsedError;
  DateTime? get nextToDiscoverCreated => throw _privateConstructorUsedError;
  double? get currentBackstop => throw _privateConstructorUsedError;
  double get retentionThreshold => throw _privateConstructorUsedError;
  String? get backstopThresholdExpiryFormatted =>
      throw _privateConstructorUsedError;
  List<UserStatisticsDayInitialized> get dayStats =>
      throw _privateConstructorUsedError;

  /// Serializes this UserStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatisticsCopyWith<UserStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatisticsCopyWith<$Res> {
  factory $UserStatisticsCopyWith(
          UserStatistics value, $Res Function(UserStatistics) then) =
      _$UserStatisticsCopyWithImpl<$Res, UserStatistics>;
  @useResult
  $Res call(
      {int leftToPractice,
      int discoveredToday,
      int discoveredWeek,
      int discoveredMonth,
      int addedWeek,
      DateTime? nextToDiscoverCreated,
      double? currentBackstop,
      double retentionThreshold,
      String? backstopThresholdExpiryFormatted,
      List<UserStatisticsDayInitialized> dayStats});
}

/// @nodoc
class _$UserStatisticsCopyWithImpl<$Res, $Val extends UserStatistics>
    implements $UserStatisticsCopyWith<$Res> {
  _$UserStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftToPractice = null,
    Object? discoveredToday = null,
    Object? discoveredWeek = null,
    Object? discoveredMonth = null,
    Object? addedWeek = null,
    Object? nextToDiscoverCreated = freezed,
    Object? currentBackstop = freezed,
    Object? retentionThreshold = null,
    Object? backstopThresholdExpiryFormatted = freezed,
    Object? dayStats = null,
  }) {
    return _then(_value.copyWith(
      leftToPractice: null == leftToPractice
          ? _value.leftToPractice
          : leftToPractice // ignore: cast_nullable_to_non_nullable
              as int,
      discoveredToday: null == discoveredToday
          ? _value.discoveredToday
          : discoveredToday // ignore: cast_nullable_to_non_nullable
              as int,
      discoveredWeek: null == discoveredWeek
          ? _value.discoveredWeek
          : discoveredWeek // ignore: cast_nullable_to_non_nullable
              as int,
      discoveredMonth: null == discoveredMonth
          ? _value.discoveredMonth
          : discoveredMonth // ignore: cast_nullable_to_non_nullable
              as int,
      addedWeek: null == addedWeek
          ? _value.addedWeek
          : addedWeek // ignore: cast_nullable_to_non_nullable
              as int,
      nextToDiscoverCreated: freezed == nextToDiscoverCreated
          ? _value.nextToDiscoverCreated
          : nextToDiscoverCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentBackstop: freezed == currentBackstop
          ? _value.currentBackstop
          : currentBackstop // ignore: cast_nullable_to_non_nullable
              as double?,
      retentionThreshold: null == retentionThreshold
          ? _value.retentionThreshold
          : retentionThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      backstopThresholdExpiryFormatted: freezed ==
              backstopThresholdExpiryFormatted
          ? _value.backstopThresholdExpiryFormatted
          : backstopThresholdExpiryFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      dayStats: null == dayStats
          ? _value.dayStats
          : dayStats // ignore: cast_nullable_to_non_nullable
              as List<UserStatisticsDayInitialized>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatisticsInitializedImplCopyWith<$Res>
    implements $UserStatisticsCopyWith<$Res> {
  factory _$$UserStatisticsInitializedImplCopyWith(
          _$UserStatisticsInitializedImpl value,
          $Res Function(_$UserStatisticsInitializedImpl) then) =
      __$$UserStatisticsInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int leftToPractice,
      int discoveredToday,
      int discoveredWeek,
      int discoveredMonth,
      int addedWeek,
      DateTime? nextToDiscoverCreated,
      double? currentBackstop,
      double retentionThreshold,
      String? backstopThresholdExpiryFormatted,
      List<UserStatisticsDayInitialized> dayStats});
}

/// @nodoc
class __$$UserStatisticsInitializedImplCopyWithImpl<$Res>
    extends _$UserStatisticsCopyWithImpl<$Res, _$UserStatisticsInitializedImpl>
    implements _$$UserStatisticsInitializedImplCopyWith<$Res> {
  __$$UserStatisticsInitializedImplCopyWithImpl(
      _$UserStatisticsInitializedImpl _value,
      $Res Function(_$UserStatisticsInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftToPractice = null,
    Object? discoveredToday = null,
    Object? discoveredWeek = null,
    Object? discoveredMonth = null,
    Object? addedWeek = null,
    Object? nextToDiscoverCreated = freezed,
    Object? currentBackstop = freezed,
    Object? retentionThreshold = null,
    Object? backstopThresholdExpiryFormatted = freezed,
    Object? dayStats = null,
  }) {
    return _then(_$UserStatisticsInitializedImpl(
      null == leftToPractice
          ? _value.leftToPractice
          : leftToPractice // ignore: cast_nullable_to_non_nullable
              as int,
      null == discoveredToday
          ? _value.discoveredToday
          : discoveredToday // ignore: cast_nullable_to_non_nullable
              as int,
      null == discoveredWeek
          ? _value.discoveredWeek
          : discoveredWeek // ignore: cast_nullable_to_non_nullable
              as int,
      null == discoveredMonth
          ? _value.discoveredMonth
          : discoveredMonth // ignore: cast_nullable_to_non_nullable
              as int,
      null == addedWeek
          ? _value.addedWeek
          : addedWeek // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == nextToDiscoverCreated
          ? _value.nextToDiscoverCreated
          : nextToDiscoverCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      freezed == currentBackstop
          ? _value.currentBackstop
          : currentBackstop // ignore: cast_nullable_to_non_nullable
              as double?,
      null == retentionThreshold
          ? _value.retentionThreshold
          : retentionThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      freezed == backstopThresholdExpiryFormatted
          ? _value.backstopThresholdExpiryFormatted
          : backstopThresholdExpiryFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      null == dayStats
          ? _value._dayStats
          : dayStats // ignore: cast_nullable_to_non_nullable
              as List<UserStatisticsDayInitialized>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatisticsInitializedImpl implements UserStatisticsInitialized {
  _$UserStatisticsInitializedImpl(
      this.leftToPractice,
      this.discoveredToday,
      this.discoveredWeek,
      this.discoveredMonth,
      this.addedWeek,
      this.nextToDiscoverCreated,
      this.currentBackstop,
      this.retentionThreshold,
      this.backstopThresholdExpiryFormatted,
      final List<UserStatisticsDayInitialized> dayStats)
      : _dayStats = dayStats;

  factory _$UserStatisticsInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatisticsInitializedImplFromJson(json);

  @override
  final int leftToPractice;
  @override
  final int discoveredToday;
  @override
  final int discoveredWeek;
  @override
  final int discoveredMonth;
  @override
  final int addedWeek;
  @override
  final DateTime? nextToDiscoverCreated;
  @override
  final double? currentBackstop;
  @override
  final double retentionThreshold;
  @override
  final String? backstopThresholdExpiryFormatted;
  final List<UserStatisticsDayInitialized> _dayStats;
  @override
  List<UserStatisticsDayInitialized> get dayStats {
    if (_dayStats is EqualUnmodifiableListView) return _dayStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayStats);
  }

  @override
  String toString() {
    return 'UserStatistics(leftToPractice: $leftToPractice, discoveredToday: $discoveredToday, discoveredWeek: $discoveredWeek, discoveredMonth: $discoveredMonth, addedWeek: $addedWeek, nextToDiscoverCreated: $nextToDiscoverCreated, currentBackstop: $currentBackstop, retentionThreshold: $retentionThreshold, backstopThresholdExpiryFormatted: $backstopThresholdExpiryFormatted, dayStats: $dayStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatisticsInitializedImpl &&
            (identical(other.leftToPractice, leftToPractice) ||
                other.leftToPractice == leftToPractice) &&
            (identical(other.discoveredToday, discoveredToday) ||
                other.discoveredToday == discoveredToday) &&
            (identical(other.discoveredWeek, discoveredWeek) ||
                other.discoveredWeek == discoveredWeek) &&
            (identical(other.discoveredMonth, discoveredMonth) ||
                other.discoveredMonth == discoveredMonth) &&
            (identical(other.addedWeek, addedWeek) ||
                other.addedWeek == addedWeek) &&
            (identical(other.nextToDiscoverCreated, nextToDiscoverCreated) ||
                other.nextToDiscoverCreated == nextToDiscoverCreated) &&
            (identical(other.currentBackstop, currentBackstop) ||
                other.currentBackstop == currentBackstop) &&
            (identical(other.retentionThreshold, retentionThreshold) ||
                other.retentionThreshold == retentionThreshold) &&
            (identical(other.backstopThresholdExpiryFormatted,
                    backstopThresholdExpiryFormatted) ||
                other.backstopThresholdExpiryFormatted ==
                    backstopThresholdExpiryFormatted) &&
            const DeepCollectionEquality().equals(other._dayStats, _dayStats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      leftToPractice,
      discoveredToday,
      discoveredWeek,
      discoveredMonth,
      addedWeek,
      nextToDiscoverCreated,
      currentBackstop,
      retentionThreshold,
      backstopThresholdExpiryFormatted,
      const DeepCollectionEquality().hash(_dayStats));

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatisticsInitializedImplCopyWith<_$UserStatisticsInitializedImpl>
      get copyWith => __$$UserStatisticsInitializedImplCopyWithImpl<
          _$UserStatisticsInitializedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatisticsInitializedImplToJson(
      this,
    );
  }
}

abstract class UserStatisticsInitialized implements UserStatistics {
  factory UserStatisticsInitialized(
          final int leftToPractice,
          final int discoveredToday,
          final int discoveredWeek,
          final int discoveredMonth,
          final int addedWeek,
          final DateTime? nextToDiscoverCreated,
          final double? currentBackstop,
          final double retentionThreshold,
          final String? backstopThresholdExpiryFormatted,
          final List<UserStatisticsDayInitialized> dayStats) =
      _$UserStatisticsInitializedImpl;

  factory UserStatisticsInitialized.fromJson(Map<String, dynamic> json) =
      _$UserStatisticsInitializedImpl.fromJson;

  @override
  int get leftToPractice;
  @override
  int get discoveredToday;
  @override
  int get discoveredWeek;
  @override
  int get discoveredMonth;
  @override
  int get addedWeek;
  @override
  DateTime? get nextToDiscoverCreated;
  @override
  double? get currentBackstop;
  @override
  double get retentionThreshold;
  @override
  String? get backstopThresholdExpiryFormatted;
  @override
  List<UserStatisticsDayInitialized> get dayStats;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatisticsInitializedImplCopyWith<_$UserStatisticsInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
