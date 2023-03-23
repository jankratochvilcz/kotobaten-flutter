// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCoreInitialized _$$UserCoreInitializedFromJson(
        Map<String, dynamic> json) =>
    _$UserCoreInitialized(
      json['id'] as int,
      json['email'] as String,
      json['retentionBackstopMaxThreshold'] as int,
    );

Map<String, dynamic> _$$UserCoreInitializedToJson(
        _$UserCoreInitialized instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'retentionBackstopMaxThreshold': instance.retentionBackstopMaxThreshold,
    };
