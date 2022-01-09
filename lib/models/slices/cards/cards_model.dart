import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/cards/card.dart';

part 'cards_model.freezed.dart';

@freezed
class CardsModel with _$CardsModel {
  CardsModel._();

  factory CardsModel.initial() = CardsModelInitial;
  factory CardsModel.loadingInitial() = CardsModelLoadingInitial;
  factory CardsModel.initialized(List<CardInitialized> cards, int pagesLoaded,
      bool loadingNextPage, bool hasMoreCards) = CardsModelInitialized;
}
