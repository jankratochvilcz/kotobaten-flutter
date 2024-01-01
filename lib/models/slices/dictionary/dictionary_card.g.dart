// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryCardInitializedImpl _$$DictionaryCardInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$DictionaryCardInitializedImpl(
      json['kanji'] as String,
      json['kana'] as String,
      (json['senses'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$DictionaryCardInitializedImplToJson(
        _$DictionaryCardInitializedImpl instance) =>
    <String, dynamic>{
      'kanji': instance.kanji,
      'kana': instance.kana,
      'senses': instance.senses,
    };
