// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreakResponseInitialized _$$StreakResponseInitializedFromJson(
        Map<String, dynamic> json) =>
    _$StreakResponseInitialized(
      (json['days'] as List<dynamic>)
          .map((e) => DayStreak.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StreakResponseInitializedToJson(
        _$StreakResponseInitialized instance) =>
    <String, dynamic>{
      'days': instance.days,
    };
