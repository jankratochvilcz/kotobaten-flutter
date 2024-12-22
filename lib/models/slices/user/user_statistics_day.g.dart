// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_statistics_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatisticsDayInitializedImpl _$$UserStatisticsDayInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$UserStatisticsDayInitializedImpl(
      DateTime.parse(json['date'] as String),
      (json['cardsAdded'] as num).toInt(),
      (json['cardsDiscovered'] as num).toInt(),
    );

Map<String, dynamic> _$$UserStatisticsDayInitializedImplToJson(
        _$UserStatisticsDayInitializedImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'cardsAdded': instance.cardsAdded,
      'cardsDiscovered': instance.cardsDiscovered,
    };
