import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/impression_type.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/practice.model.dart';

enum CardType { standard, discover, none }

class PracticeViewModel extends StateNotifier<PracticeModel> {
  final KotobatenApiService _apiService;

  PracticeViewModel(this._apiService) : super(const PracticeModel.initial());

  void reset() {
    state = const PracticeModel.initial();
  }

  Future initialize() async {
    state = const PracticeModel.loading();

    final impressions = await _apiService.getImpressions();
    state = PracticeModel.inProgress(
        impressions, impressions.sublist(1), impressions.first, false);
  }

  void reveal() {
    final currentState = state;
    if (currentState is! InProgress) {
      throw const Error('Cannot reveal when not in in-progress state');
    }

    state = currentState.copyWith(revealed: true);
  }

  void evaluateCorrect() {
    final currentState = state;
    if (currentState is! InProgress) {
      throw const Error('Cannot evaluate while not in-progress');
    }

    if (currentState.remainingImpressions.isEmpty) {
      state = const PracticeModel.finished();
      return;
    }

    state = currentState.copyWith(
        revealed: false,
        remainingImpressions: currentState.remainingImpressions.sublist(1),
        currentImpression: currentState.remainingImpressions.first);
  }

  void evaluateWrong() {
    final currentState = state;
    if (currentState is! InProgress) {
      throw const Error('Cannot evaluate while not in-progress');
    }
  }

  CardType getCardType() {
    final currentState = state;

    if (currentState is! InProgress) {
      return CardType.none;
    }

    return currentState.currentImpression.impressionType ==
            ImpressionType.discover
        ? CardType.discover
        : CardType.none;
  }

  String getImpressionText() {
    final currentState = state;
    if (currentState is! InProgress) {
      return '';
    }

    if (currentState.revealed) {
      return currentState.currentImpression.impressionType ==
              ImpressionType.kana
          ? currentState.currentImpression.card.kana ??
              currentState.currentImpression.card.kanji ??
              ''
          : currentState.currentImpression.card.sense;
    }

    return currentState.currentImpression.impressionType == ImpressionType.sense
        ? currentState.currentImpression.card.kana ??
            currentState.currentImpression.card.kanji ??
            ''
        : currentState.currentImpression.card.kanji ??
            currentState.currentImpression.card.sense;
  }

  String getHintText() {
    final currentState = state;
    if (currentState is! InProgress) {
      return '';
    }

    return currentState.currentImpression.impressionType == ImpressionType.kana
        ? 'the kanji'
        : 'the meaning';
  }
}
