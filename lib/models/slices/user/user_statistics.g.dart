// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatisticsInitialized _$$UserStatisticsInitializedFromJson(
        Map<String, dynamic> json) =>
    _$UserStatisticsInitialized(
      json['leftToPractice'] as int,
      json['discoveredToday'] as int,
      json['discoveredWeek'] as int,
      json['discoveredMonth'] as int,
      json['addedWeek'] as int,
      json['nextToDiscoverCreated'] == null
          ? null
          : DateTime.parse(json['nextToDiscoverCreated'] as String),
      (json['currentBackstop'] as num?)?.toDouble(),
      (json['retentionThreshold'] as num).toDouble(),
      json['backstopThresholdExpiryFormatted'] as String?,
      streaks: (json['streaks'] as List<dynamic>?)
          ?.map((e) => DayStreak.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserStatisticsInitializedToJson(
        _$UserStatisticsInitialized instance) =>
    <String, dynamic>{
      'leftToPractice': instance.leftToPractice,
      'discoveredToday': instance.discoveredToday,
      'discoveredWeek': instance.discoveredWeek,
      'discoveredMonth': instance.discoveredMonth,
      'addedWeek': instance.addedWeek,
      'nextToDiscoverCreated':
          instance.nextToDiscoverCreated?.toIso8601String(),
      'currentBackstop': instance.currentBackstop,
      'retentionThreshold': instance.retentionThreshold,
      'backstopThresholdExpiryFormatted':
          instance.backstopThresholdExpiryFormatted,
      'streaks': instance.streaks,
    };
