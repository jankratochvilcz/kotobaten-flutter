// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initialized _$$InitializedFromJson(Map<String, dynamic> json) =>
    _$Initialized(
      (json['cards'] as List<dynamic>)
          .map((e) => CardInitialized.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['hasMoreCards'] as bool,
    );

Map<String, dynamic> _$$InitializedToJson(_$Initialized instance) =>
    <String, dynamic>{
      'cards': instance.cards,
      'hasMoreCards': instance.hasMoreCards,
    };
