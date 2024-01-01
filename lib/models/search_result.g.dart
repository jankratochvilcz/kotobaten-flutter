// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultInitializedImpl _$$SearchResultInitializedImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultInitializedImpl(
      json['query'] as String,
      (json['cards'] as List<dynamic>)
          .map((e) => CardInitialized.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['dictionaryCards'] as List<dynamic>)
          .map((e) =>
              DictionaryCardInitialized.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultInitializedImplToJson(
        _$SearchResultInitializedImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'cards': instance.cards,
      'dictionaryCards': instance.dictionaryCards,
    };
