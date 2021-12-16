// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statistics _$StatisticsFromJson(Map<String, dynamic> json) => Statistics(
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
    );

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
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
    };
