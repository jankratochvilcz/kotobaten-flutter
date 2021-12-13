// freezed handles annotations on args https://pub.dev/packages/freezed
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.g.dart';
part 'card.freezed.dart';

String? toNonEmptyString(dynamic x) {
  if (x == null) {
    return null;
  }

  final result = x.toString();
  return result.isNotEmpty ? result : null;
}

@freezed
class Card with _$Card {
  @JsonSerializable(explicitToJson: true)
  factory Card(
      int id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      String? note) = CardInitialized;

  factory Card.newCard(
      String sense, String? kana, String? kanji, String? note) = CardNew;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
