// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitializedImpl _$$InitializedImplFromJson(Map<String, dynamic> json) =>
    _$InitializedImpl(
      (json['cards'] as List<dynamic>)
          .map((e) => CardInitialized.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['hasMoreCards'] as bool,
    );

Map<String, dynamic> _$$InitializedImplToJson(_$InitializedImpl instance) =>
    <String, dynamic>{
      'cards': instance.cards,
      'hasMoreCards': instance.hasMoreCards,
    };
