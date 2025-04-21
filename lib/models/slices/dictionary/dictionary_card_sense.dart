import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_card_sense.g.dart';
part 'dictionary_card_sense.freezed.dart';

@freezed
class DictionaryCardSense with _$DictionaryCardSense {
  @JsonSerializable(explicitToJson: true)
  factory DictionaryCardSense(List<String> senses, List<String> partsOfSpeech) =
      DictionaryCardSenseInitialized;

  factory DictionaryCardSense.fromJson(Map<String, dynamic> json) =>
      _$DictionaryCardSenseFromJson(json);
}
