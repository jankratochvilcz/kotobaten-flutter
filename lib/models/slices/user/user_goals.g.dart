// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_goals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGoalsInitializedImpl _$$UserGoalsInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$UserGoalsInitializedImpl(
      (json['discoverWeekly'] as num).toInt(),
      (json['discoverMonthly'] as num).toInt(),
      (json['discoverDaily'] as num).toInt(),
    );

Map<String, dynamic> _$$UserGoalsInitializedImplToJson(
        _$UserGoalsInitializedImpl instance) =>
    <String, dynamic>{
      'discoverWeekly': instance.discoverWeekly,
      'discoverMonthly': instance.discoverMonthly,
      'discoverDaily': instance.discoverDaily,
    };
