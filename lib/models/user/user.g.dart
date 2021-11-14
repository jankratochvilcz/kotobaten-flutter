// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialUser _$$InitialUserFromJson(Map<String, dynamic> json) =>
    _$InitialUser();

Map<String, dynamic> _$$InitialUserToJson(_$InitialUser instance) =>
    <String, dynamic>{};

_$InitializedUser _$$InitializedUserFromJson(Map<String, dynamic> json) =>
    _$InitializedUser(
      Statistics.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitializedUserToJson(_$InitializedUser instance) =>
    <String, dynamic>{
      'stats': instance.stats,
    };
