

import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

String? toNonEmptyString(dynamic x) {
  if(x == null) {
    return null;
  }

  final result = x.toString();
  return result.isNotEmpty ? result : null;
}

@JsonSerializable()
class Card
{
  Card(this.id, this.sense, this.kana, this.kanji);

  int id;
  String sense;
  @JsonKey(fromJson: toNonEmptyString) String? kana;
  @JsonKey(fromJson: toNonEmptyString) String? kanji;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}