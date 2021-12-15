import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/card.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/collection.model.dart';

const pageSize = 20;
const initialPages = 3;

class CollectionViewModel extends StateNotifier<CollectionModel> {
  final KotobatenApiService _apiService;

  CollectionViewModel(CollectionModel state, this._apiService) : super(state);

  void initialize() async {
    state = const CollectionModel.initializing();

    final firstBatch = await _apiService.getCards(0, pageSize * initialPages);
    state = CollectionModel.initialized(firstBatch, initialPages, false);
  }

  void loadMoreCards() async {
    final currentState = state;
    if (currentState is! CollectionModelInitialized) {
      return;
    }

    state = currentState.copyWith(loadingNextPage: true);

    final nextPage = currentState.pagesLoaded + 1;

    final nextBatch = await _apiService.getCards(nextPage, pageSize);
    final updatedCards = [...currentState.cards, ...nextBatch];

    state = currentState.copyWith(
        cards: updatedCards, loadingNextPage: false, pagesLoaded: nextPage);
  }

  Future<Card> createCard(Card card) async {
    final newCard = await _apiService.postCard(card);

    final currentState = state;
    if (currentState is CollectionModelInitialized) {
      state = currentState.copyWith(cards: [newCard, ...currentState.cards]);
    }

    return newCard;
  }

  Future<bool> deleteCard(CardInitialized card) async {
    final deleteCardResult = await _apiService.deleteCard(card.id);

    final currentState = state;
    if (deleteCardResult && currentState is CollectionModelInitialized) {
      state = currentState.copyWith(
          cards: currentState.cards.where((x) => x != card).toList());
    }

    return deleteCardResult;
  }

  Future<CardInitialized> editCard(CardInitialized card) async {
    final editedCard = await _apiService.postCard(card);

    final currentState = state;
    if (currentState is CollectionModelInitialized) {
      final index = currentState.cards
          .indexOf(currentState.cards.firstWhere((x) => x.id == editedCard.id));
      currentState.cards.removeAt(index);
      currentState.cards.insert(index, editedCard);
      state = currentState.copyWith(cards: currentState.cards);
    }

    return editedCard;
  }

  void reset() {
    state = const CollectionModel.initial();
  }
}
