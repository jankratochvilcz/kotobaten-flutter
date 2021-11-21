// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      json['id'] as int,
      json['sense'] as String,
      toNonEmptyString(json['kana']),
      toNonEmptyString(json['kanji']),
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'id': instance.id,
      'sense': instance.sense,
      'kana': instance.kana,
      'kanji': instance.kanji,
    };
