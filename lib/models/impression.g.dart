// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initialized _$$InitializedFromJson(Map<String, dynamic> json) =>
    _$Initialized(
      Card.fromJson(json['card'] as Map<String, dynamic>),
      $enumDecode(_$ImpressionTypeEnumMap, json['impressionType']),
    );

Map<String, dynamic> _$$InitializedToJson(_$Initialized instance) =>
    <String, dynamic>{
      'card': instance.card,
      'impressionType': _$ImpressionTypeEnumMap[instance.impressionType],
    };

const _$ImpressionTypeEnumMap = {
  ImpressionType.kana: 'KanaRequested',
  ImpressionType.sense: 'SenseRequested',
  ImpressionType.discover: 'NewOrForgottenCard',
};
