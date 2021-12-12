import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/impression_type.dart';
import 'package:kotobaten/models/user/statistics.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';
import 'package:kotobaten/views/screens/practice.model.dart';

enum ImpressionViewType { hidden, revealed, discover, none }

class PracticeViewModel extends StateNotifier<PracticeModel> {
  final KotobatenApiService _apiService;
  final UserRepository _userRepository;

  PracticeViewModel(this._apiService, this._userRepository)
      : super(const PracticeModel.initial());

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

  Future evaluateCorrect() async {
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

    saveStatistics(
        await _apiService.postImpression(currentState.currentImpression, true));
  }

  Future evaluateWrong() async {
    final currentState = state;
    if (currentState is! InProgress) {
      throw const Error('Cannot evaluate while not in-progress');
    }

    final nextRemainingImpressions = currentState.remainingImpressions
        .shuffleElementIntoListUpToTwice(currentState.currentImpression);

    state = currentState.copyWith(
        revealed: false,
        remainingImpressions: nextRemainingImpressions.toList().sublist(1),
        currentImpression: currentState.remainingImpressions.first);

    saveStatistics(await _apiService.postImpression(
        currentState.currentImpression, false));
  }

  Future saveStatistics(Statistics stats) async {
    final user = _userRepository.get();

    if (user is! InitializedUser) {
      return;
    }

    await _userRepository.set(user.copyWith(stats: stats));
  }

  ImpressionViewType getImpressionViewType() {
    final currentState = state;

    if (currentState is! InProgress) {
      return ImpressionViewType.none;
    }

    return currentState.currentImpression.impressionType ==
            ImpressionType.discover
        ? ImpressionViewType.discover
        : currentState.revealed
            ? ImpressionViewType.revealed
            : ImpressionViewType.hidden;
  }

  String getPrimaryText() {
    final currentState = state;
    if (currentState is! InProgress) {
      return '';
    }

    if (currentState.revealed) {
      return currentState.currentImpression.card.kanji != null
          ? currentState.currentImpression.card.kanji ?? ''
          : currentState.currentImpression.card.kana ?? '';
    }

    return currentState.currentImpression.impressionType == ImpressionType.sense
        ? currentState.currentImpression.card.kana ??
            currentState.currentImpression.card.kanji ??
            ''
        : currentState.currentImpression.card.kanji ??
            currentState.currentImpression.card.sense;
  }

  String? getFurigana() {
    final currentState = state;
    if (currentState is! InProgress || !currentState.revealed) {
      return null;
    }

    return currentState.currentImpression.card.kanji != null
        ? currentState.currentImpression.card.kana
        : null;
  }

  String? getSecondaryText() {
    final currentState = state;
    if (currentState is! InProgress || !currentState.revealed) {
      return null;
    }

    return currentState.currentImpression.card.sense;
  }

  String getHintText() {
    final currentState = state;
    if (currentState is! InProgress) {
      return '';
    }

    return currentState.currentImpression.impressionType == ImpressionType.kana
        ? 'the kana'
        : 'the meaning';
  }

  double getProgress() {
    final currentState = state;

    if (currentState is! InProgress) {
      return 0;
    }

    final progress = (currentState.allImpressions.length -
            currentState.remainingImpressions.length -
            1) /
        currentState.allImpressions.length;

    return progress;
  }
}
