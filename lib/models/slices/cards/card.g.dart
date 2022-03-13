// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardInitialized _$$CardInitializedFromJson(Map<String, dynamic> json) =>
    _$CardInitialized(
      json['id'] as int,
      json['sense'] as String,
      toNonEmptyString(json['kana']),
      toNonEmptyString(json['kanji']),
      json['note'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardInitializedToJson(_$CardInitialized instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sense': instance.sense,
      'kana': instance.kana,
      'kanji': instance.kanji,
      'note': instance.note,
      'runtimeType': instance.$type,
    };

_$CardNew _$$CardNewFromJson(Map<String, dynamic> json) => _$CardNew(
      json['sense'] as String,
      json['kana'] as String?,
      json['kanji'] as String?,
      json['note'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardNewToJson(_$CardNew instance) => <String, dynamic>{
      'sense': instance.sense,
      'kana': instance.kana,
      'kanji': instance.kanji,
      'note': instance.note,
      'runtimeType': instance.$type,
    };
