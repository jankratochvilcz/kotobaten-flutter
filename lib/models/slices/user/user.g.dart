// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInitialized _$$UserInitializedFromJson(Map<String, dynamic> json) =>
    _$UserInitialized(
      UserStatistics.fromJson(json['stats'] as Map<String, dynamic>),
      UserCore.fromJson(json['user'] as Map<String, dynamic>),
      UserGoals.fromJson(json['goals'] as Map<String, dynamic>),
      UserOnboarding.fromJson(json['onboarding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInitializedToJson(_$UserInitialized instance) =>
    <String, dynamic>{
      'stats': instance.stats,
      'user': instance.user,
      'goals': instance.goals,
      'onboarding': instance.onboarding,
    };
