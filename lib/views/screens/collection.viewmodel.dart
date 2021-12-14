import 'package:hooks_riverpod/hooks_riverpod.dart';
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

  void reset() {
    state = const CollectionModel.initial();
  }
}
