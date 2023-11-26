// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInitializedImpl _$$UserInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInitializedImpl(
      UserStatistics.fromJson(json['stats'] as Map<String, dynamic>),
      UserCore.fromJson(json['user'] as Map<String, dynamic>),
      UserGoals.fromJson(json['goals'] as Map<String, dynamic>),
      UserOnboarding.fromJson(json['onboarding'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInitializedImplToJson(
        _$UserInitializedImpl instance) =>
    <String, dynamic>{
      'stats': instance.stats,
      'user': instance.user,
      'goals': instance.goals,
      'onboarding': instance.onboarding,
    };
