import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/cards/cards_model.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/models/slices/cards/cards_repository.dart';

const pageSize = 20;
const initialPages = 3;

final cardsServiceProvider = Provider<CardsService>((ref) => CardsService(
    ref.watch(kotobatenApiServiceProvider),
    ref.watch(cardsRepositoryProvider.notifier),
    ref.watch(userServiceProvider),
    ref.watch(practiceRepositoryProvider.notifier),
    ref.watch(userRepositoryProvider.notifier)));

class CardsService {
  final KotobatenApiService apiService;
  final CardsRepository cardsRepository;
  final UserService userService;
  final PracticeRepository practiceRepository;
  final UserRepository userRepository;

  CardsService(this.apiService, this.cardsRepository, this.userService,
      this.practiceRepository, this.userRepository);

  Future initialize({CardType? type}) async {
    if (cardsRepository.current is CardsModelLoadingInitial) {
      return null;
    }

    cardsRepository.update(CardsModel.loadingInitial());

    final firstBatch =
        await apiService.getCards(0, pageSize * initialPages, type: type);
    final result = CardsModel.initialized(
        firstBatch.cards, initialPages, false, firstBatch.hasMoreCards);
    cardsRepository.update(result);
  }

  Future loadMoreCards() async {
    final currentModel = cardsRepository.current;

    if (currentModel is! CardsModelInitialized) {
      return initialize();
    }

    cardsRepository.update(currentModel.copyWith(loadingNextPage: true));

    final nextPage = currentModel.pagesLoaded + 1;

    final nextBatch = await apiService.getCards(nextPage, pageSize);
    final updatedCards = [...currentModel.cards, ...nextBatch.cards];

    final nextModel = currentModel.copyWith(
        cards: updatedCards,
        loadingNextPage: false,
        pagesLoaded: nextPage,
        hasMoreCards: nextBatch.hasMoreCards);

    cardsRepository.update(nextModel);
  }

  Future<CardInitialized> createCard(CardNew card) async {
    final newCard = await apiService.postCard(card);

    final currentState = cardsRepository.current;
    if (currentState is CardsModelInitialized) {
      cardsRepository.update(
          currentState.copyWith(cards: [newCard, ...currentState.cards]));
    }

    final currentUser = userRepository.current;

    if (currentUser is UserModelInitialized) {
      final statisticsWithNewCardCount = currentUser.user.stats
          .copyWith(addedWeek: currentUser.user.stats.addedWeek + 1);
      userService.updateStatistics(statisticsWithNewCardCount);
    }

    return newCard;
  }

  Future createDemoCards() async {
    await apiService.generateDemoCards();
    await userService.refreshUser();
  }

  Future<CardInitialized> deleteCard(CardInitialized card) async {
    final deleteCardResult = await apiService.deleteCard(card.id);

    final currentState = cardsRepository.current;
    if (deleteCardResult && currentState is CardsModelInitialized) {
      cardsRepository.update(currentState.copyWith(
          cards: currentState.cards.where((x) => x != card).toList()));
    }

    final currentPracticeState = practiceRepository.current;

    if (currentPracticeState is PracticeModelFinished) {
      final updatedPracticeStateImpressions = currentPracticeState
          .allImpressions
          .where((x) => x.card.id != card.id)
          .toList();

      practiceRepository.update(currentPracticeState.copyWith(
          allImpressions: updatedPracticeStateImpressions));
    }

    await userService.refreshUser();

    return card;
  }

  Future<CardInitialized> editCard(CardInitialized card) async {
    final editedCard = await apiService.postCard(card);

    final currentState = cardsRepository.current;
    if (currentState is CardsModelInitialized) {
      final index = currentState.cards
          .indexOf(currentState.cards.firstWhere((x) => x.id == editedCard.id));
      final updatedCards = currentState.cards
          .mapIndexed((i, element) => i != index ? element : editedCard)
          .toList();
      cardsRepository.update(currentState.copyWith(cards: updatedCards));
    }

    final currentPracticeState = practiceRepository.current;

    if (currentPracticeState is PracticeModelFinished) {
      final updatedPracticeStateImpressions = currentPracticeState
          .allImpressions
          .map((x) => x.card.id == card.id ? x.copyWith(card: card) : x)
          .toList();

      practiceRepository.update(currentPracticeState.copyWith(
          allImpressions: updatedPracticeStateImpressions));
    }

    return editedCard;
  }
}
