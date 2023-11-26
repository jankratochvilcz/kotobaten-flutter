// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impressions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitializedImpl _$$InitializedImplFromJson(Map<String, dynamic> json) =>
    _$InitializedImpl(
      $enumDecode(_$ImpressionTypeEnumMap, json['impressionType']),
      json['stackCardId'] as int,
      json['success'] as bool,
      DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$InitializedImplToJson(_$InitializedImpl instance) =>
    <String, dynamic>{
      'impressionType': _$ImpressionTypeEnumMap[instance.impressionType]!,
      'stackCardId': instance.stackCardId,
      'success': instance.success,
      'timestamp': instance.timestamp.toIso8601String(),
    };

const _$ImpressionTypeEnumMap = {
  ImpressionType.kana: 'KanaRequested',
  ImpressionType.sense: 'SenseRequested',
  ImpressionType.discover: 'NewOrForgottenCard',
  ImpressionType.generatedSentence: 'GeneratedSentence',
};
