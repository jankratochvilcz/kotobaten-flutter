import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/impression.dart';
import 'package:kotobaten/models/impression_type.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/kotobaten_api.dart';

final practiceServiceProvider = Provider<PracticeService>((ref) =>
    PracticeService(
        ref.watch(practiceRepositoryProvider.notifier),
        ref.watch(kotobatenApiServiceProvider),
        ref.watch(userServiceProvider)));

class PracticeService {
  final PracticeRepository repository;
  final KotobatenApiService apiService;
  final UserService userService;

  PracticeService(this.repository, this.apiService, this.userService);

  Future initialize() async {
    final currentState = repository.current;

    if (currentState is PracticeModelInProgress) {
      return;
    }

    repository.update(const PracticeModel.loading());

    final impressions = await apiService.getImpressions();

    repository.update(PracticeModel.inProgress(
        impressions, impressions.sublist(1), impressions.first, false, false));
  }

  void reveal() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription('Cannot reveal when not in in-progress state');
    }

    repository.update(currentState.copyWith(revealed: true));
  }

  Future evaluateCorrect() async {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription('Cannot evaluate while not in-progress');
    }

    if (currentState.remainingImpressions.isEmpty) {
      repository.update(const PracticeModel.finished());
      return;
    }

    repository.update(currentState.copyWith(
        revealed: false,
        speechPlayed: false,
        remainingImpressions: currentState.remainingImpressions.sublist(1),
        currentImpression: currentState.remainingImpressions.first));

    userService.updateStatistics(
        await apiService.postImpression(currentState.currentImpression, true));
  }

  Future evaluateWrong() async {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription('Cannot evaluate while not in-progress');
    }

    if (currentState.remainingImpressions.isEmpty) {
      repository.update(currentState.copyWith(revealed: false));
      return;
    }

    final nextImpressions = currentState.remainingImpressions
        .shuffleElementIntoListUpToTwice(currentState.currentImpression)
        .toList();

    final nextCurrentImpression = nextImpressions.first;
    final nextRemainingImpressions = nextImpressions.sublist(1);

    repository.update(currentState.copyWith(
        revealed: false,
        speechPlayed: false,
        remainingImpressions: nextRemainingImpressions,
        currentImpression: nextCurrentImpression));

    userService.updateStatistics(
        await apiService.postImpression(currentState.currentImpression, false));
  }

  String? getSpeechToPlay() {
    final currentState = repository.current;
    return currentState is PracticeModelInProgress &&
            !currentState.speechPlayed &&
            currentState.currentImpression.speechPath != null &&
            currentState.currentImpression.impressionType != ImpressionType.kana
        ? currentState.currentImpression.speechPath
        : null;
  }

  markSpeechAsPlayed() {
    final currentState = repository.current;
    if (currentState is PracticeModelInProgress) {
      repository.update(currentState.copyWith(speechPlayed: true));
    }
  }

  ImpressionViewType getImpressionViewType() {
    final currentState = repository.current;

    if (currentState is! PracticeModelInProgress) {
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
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      return '';
    }

    if (currentState.revealed) {
      return currentState.currentImpression.card.kanji != null
          ? currentState.currentImpression.card.kanji ?? ''
          : currentState.currentImpression.card.kana ?? '';
    }

    if (currentState.currentImpression.impressionType ==
        ImpressionType.discover) {
      return currentState.currentImpression.card.kanji ??
          currentState.currentImpression.card.kana ??
          '';
    }

    return currentState.currentImpression.impressionType == ImpressionType.sense
        ? currentState.currentImpression.card.kana ??
            currentState.currentImpression.card.kanji ??
            ''
        : currentState.currentImpression.card.kanji ??
            currentState.currentImpression.card.sense;
  }

  String? getFurigana() {
    final currentState = repository.current;
    if ((currentState is! PracticeModelInProgress ||
        (!currentState.revealed &&
            currentState.currentImpression.impressionType !=
                ImpressionType.discover))) {
      return null;
    }

    return currentState.currentImpression.card.kanji != null
        ? currentState.currentImpression.card.kana
        : null;
  }

  String? getSecondaryText() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress ||
        (!currentState.revealed &&
            currentState.currentImpression.impressionType !=
                ImpressionType.discover)) {
      return null;
    }

    return currentState.currentImpression.card.sense;
  }

  String getHintText() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      return '';
    }

    return currentState.currentImpression.impressionType == ImpressionType.kana
        ? 'the kana'
        : 'the meaning';
  }

  double getProgress() {
    final currentState = repository.current;

    if (currentState is! PracticeModelInProgress) {
      return 0;
    }

    final progress = (currentState.allImpressions.length -
            currentState.remainingImpressions.length -
            1) /
        currentState.allImpressions.length;

    return progress;
  }

  List<Impression> getCurrentAndRemainingImpressions() {
    final currentState = repository.current;

    return currentState is PracticeModelInProgress
        ? [currentState.currentImpression, ...currentState.remainingImpressions]
        : <Impression>[];
  }
}
