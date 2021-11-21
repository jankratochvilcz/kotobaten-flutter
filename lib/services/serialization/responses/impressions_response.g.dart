// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impressions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initialized _$$InitializedFromJson(Map<String, dynamic> json) =>
    _$Initialized(
      (json['impressions'] as List<dynamic>)
          .map((e) => Impression.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InitializedToJson(_$Initialized instance) =>
    <String, dynamic>{
      'impressions': instance.impressions,
    };
