// freezed handles annotations on args https://pub.dev/packages/freezed
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';

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
      int? id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      DateTime created,
      String? note,
      CardType type,
      double? senseRetention,
      double? kanaRetention) = CardInitialized;

  factory Card.newCard(String sense, String? kana, String? kanji, String? note,
      DateTime created, CardType type) = CardNew;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
