// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitializedImpl _$$InitializedImplFromJson(Map<String, dynamic> json) =>
    _$InitializedImpl(
      CardInitialized.fromJson(json['card'] as Map<String, dynamic>),
      $enumDecode(_$ImpressionTypeEnumMap, json['impressionType']),
      json['speechPath'] as String?,
    );

Map<String, dynamic> _$$InitializedImplToJson(_$InitializedImpl instance) =>
    <String, dynamic>{
      'card': instance.card,
      'impressionType': _$ImpressionTypeEnumMap[instance.impressionType]!,
      'speechPath': instance.speechPath,
    };

const _$ImpressionTypeEnumMap = {
  ImpressionType.kana: 'KanaRequested',
  ImpressionType.sense: 'SenseRequested',
  ImpressionType.discover: 'NewOrForgottenCard',
  ImpressionType.generatedSentence: 'GeneratedSentence',
};
