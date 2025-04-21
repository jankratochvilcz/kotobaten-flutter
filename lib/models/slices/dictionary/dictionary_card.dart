import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/dictionary/dictionary_card_sense.dart';

part 'dictionary_card.g.dart';
part 'dictionary_card.freezed.dart';

@freezed
class DictionaryCard with _$DictionaryCard {
  @JsonSerializable(explicitToJson: true)
  factory DictionaryCard(
      String kanji,
      String kana,
      List<DictionaryCardSenseInitialized> senses,
      String? note,
      bool isCommon) = DictionaryCardInitialized;

  factory DictionaryCard.fromJson(Map<String, dynamic> json) =>
      _$DictionaryCardFromJson(json);
}
