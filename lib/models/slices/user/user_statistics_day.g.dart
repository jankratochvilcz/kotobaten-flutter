// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_statistics_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatisticsDayInitialized _$$UserStatisticsDayInitializedFromJson(
        Map<String, dynamic> json) =>
    _$UserStatisticsDayInitialized(
      DateTime.parse(json['date'] as String),
      json['cardsAdded'] as int,
      json['cardsDiscovered'] as int,
    );

Map<String, dynamic> _$$UserStatisticsDayInitializedToJson(
        _$UserStatisticsDayInitialized instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'cardsAdded': instance.cardsAdded,
      'cardsDiscovered': instance.cardsDiscovered,
    };
