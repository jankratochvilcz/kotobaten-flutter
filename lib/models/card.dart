
import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

@JsonSerializable()
class Card
{
  Card(this.id, this.sense, this.kana, this.kanji);

  int id;
  String sense;
  String? kana;
  String? kanji;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}