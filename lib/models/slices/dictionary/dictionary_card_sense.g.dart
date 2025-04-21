// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_card_sense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DictionaryCardSenseInitializedImpl
    _$$DictionaryCardSenseInitializedImplFromJson(Map<String, dynamic> json) =>
        _$DictionaryCardSenseInitializedImpl(
          (json['senses'] as List<dynamic>).map((e) => e as String).toList(),
          (json['partsOfSpeech'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$DictionaryCardSenseInitializedImplToJson(
        _$DictionaryCardSenseInitializedImpl instance) =>
    <String, dynamic>{
      'senses': instance.senses,
      'partsOfSpeech': instance.partsOfSpeech,
    };
