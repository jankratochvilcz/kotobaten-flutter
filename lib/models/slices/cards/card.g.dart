// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardInitializedImpl _$$CardInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$CardInitializedImpl(
      json['id'] as int?,
      json['sense'] as String,
      toNonEmptyString(json['kana']),
      toNonEmptyString(json['kanji']),
      DateTime.parse(json['created'] as String),
      json['note'] as String?,
      $enumDecode(_$CardTypeEnumMap, json['type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardInitializedImplToJson(
        _$CardInitializedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sense': instance.sense,
      'kana': instance.kana,
      'kanji': instance.kanji,
      'created': instance.created.toIso8601String(),
      'note': instance.note,
      'type': _$CardTypeEnumMap[instance.type]!,
      'runtimeType': instance.$type,
    };

const _$CardTypeEnumMap = {
  CardType.word: 'Word',
  CardType.grammar: 'Grammar',
};

_$CardNewImpl _$$CardNewImplFromJson(Map<String, dynamic> json) =>
    _$CardNewImpl(
      json['sense'] as String,
      json['kana'] as String?,
      json['kanji'] as String?,
      json['note'] as String?,
      DateTime.parse(json['created'] as String),
      $enumDecode(_$CardTypeEnumMap, json['type']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardNewImplToJson(_$CardNewImpl instance) =>
    <String, dynamic>{
      'sense': instance.sense,
      'kana': instance.kana,
      'kanji': instance.kanji,
      'note': instance.note,
      'created': instance.created.toIso8601String(),
      'type': _$CardTypeEnumMap[instance.type]!,
      'runtimeType': instance.$type,
    };
