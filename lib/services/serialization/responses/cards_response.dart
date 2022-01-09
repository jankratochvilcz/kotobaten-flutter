import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/cards/card.dart';

part 'cards_response.freezed.dart';
part 'cards_response.g.dart';

@freezed
class CardsResponse with _$CardsResponse {
  factory CardsResponse.initialized(
      List<CardInitialized> cards, bool hasMoreCards) = Initialized;

  factory CardsResponse.fromJson(Map<String, dynamic> json) =>
      _$CardsResponseFromJson(json);
}
