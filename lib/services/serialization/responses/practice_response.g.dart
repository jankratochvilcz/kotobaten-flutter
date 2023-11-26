// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitializedImpl _$$InitializedImplFromJson(Map<String, dynamic> json) =>
    _$InitializedImpl(
      (json['impressions'] as List<dynamic>)
          .map((e) => Impression.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InitializedImplToJson(_$InitializedImpl instance) =>
    <String, dynamic>{
      'impressions': instance.impressions,
    };
