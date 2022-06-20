// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_day_streak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayStreakInitialized _$$DayStreakInitializedFromJson(
        Map<String, dynamic> json) =>
    _$DayStreakInitialized(
      DateTime.parse(json['date'] as String),
      json['hasStreak'] as bool,
    );

Map<String, dynamic> _$$DayStreakInitializedToJson(
        _$DayStreakInitialized instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'hasStreak': instance.hasStreak,
    };
