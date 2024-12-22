// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCoreInitializedImpl _$$UserCoreInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCoreInitializedImpl(
      (json['id'] as num).toInt(),
      json['email'] as String,
      (json['retentionBackstopMaxThreshold'] as num).toInt(),
      json['disableSounds'] as bool?,
      json['timezoneName'] as String?,
      (json['utcOffsetHours'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserCoreInitializedImplToJson(
        _$UserCoreInitializedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'retentionBackstopMaxThreshold': instance.retentionBackstopMaxThreshold,
      'disableSounds': instance.disableSounds,
      'timezoneName': instance.timezoneName,
      'utcOffsetHours': instance.utcOffsetHours,
    };
