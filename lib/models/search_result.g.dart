// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultInitialized _$$SearchResultInitializedFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultInitialized(
      json['query'] as String,
      (json['cards'] as List<dynamic>)
          .map((e) => CardInitialized.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultInitializedToJson(
        _$SearchResultInitialized instance) =>
    <String, dynamic>{
      'query': instance.query,
      'cards': instance.cards,
    };
