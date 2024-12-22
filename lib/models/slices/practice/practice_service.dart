import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_option.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/kana_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/new_card_impression.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/sense_guess_impression.dart';
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

  final _hiddenStateMaxDuration = const Duration(seconds: 10);
  final _revealedStateMaxDuration = const Duration(seconds: 5);

  PracticeService(this.repository, this.apiService, this.userService);

  _getHiddenStateExpiry() => DateTime.now().add(_hiddenStateMaxDuration);
  _getRevealedStateExpiry() => DateTime.now().add(_revealedStateMaxDuration);

  Future initialize() async {
    final currentState = repository.current;

    if (currentState is PracticeModelInProgress) {
      return;
    }

    repository.update(const PracticeModel.loading());

    final impressions = (await apiService.getPractice())
        .where((element) =>
            element.type != ImpressionType.generatedSentenceWithParticlesSelect)
        .toList();

    // Ad-hoc code for quickly testing different card types

    // final grammarImpression = Impression.initialized(
    //     CardInitialized(1, "みたい", "try to do something", "", DateTime.now(),
    //         "これをやってみたい", CardType.grammar),
    //     ImpressionType.sense,
    //     null);

    // final newImpression = NewCardImpression(CardInitialized(
    //     1, 'Sense', 'Kana', 'Kanji', DateTime.now(), 'my note', CardType.word));

    // final newImpression = GeneratedSentenceGuessImpression(
    //     'きょうははるだ', '今日は春だ', 'Today is a bright weather');

    // final newImpression = GeneratedSentenceWithParticlesSelectImpression(
    //     2, '2 is correct because of lorem ipsum', 'I went to the movies', [
    //   Sentence('映画観を行った', 'えいがかんでいいた'),
    //   Sentence('映画観に行った', 'えいがかんでいいた'),
    //   Sentence('映画観で行った', 'えいがかんでいいた')
    // ]);

    // final impressions = [newImpression];

    // repository.update(PracticeModel.inProgress(
    //     impressions, impressions.sublist(1), impressions.first, false, false,
    //     nextStepTime: _getHiddenStateExpiry(),
    //     currentStepStart: DateTime.now()));

    repository.update(PracticeModel.inProgress(
        impressions, impressions.sublist(1), impressions.first, false, false,
        nextStepTime: _getHiddenStateExpiry(),
        currentStepStart: DateTime.now()));
  }

  void reveal() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription('Cannot reveal when not in in-progress state');
    }

    repository.update(currentState.copyWith(
        pausedPercentage: null,
        revealed: true,
        nextStepTime: _getRevealedStateExpiry(),
        currentStepStart: DateTime.now()));
  }

  void reset() {
    repository.update(const PracticeModel.initial());
  }

  /// We need to capture navigation in the state to aboud double-navigation during component refreshes.
  void endSession() {
    final currentState = repository.current;
    if (currentState is PracticeModelFinished &&
        currentState.navigatedAway != true) {
      repository.update(currentState.copyWith(navigatedAway: true));
    }
  }

  Future evaluateCorrect() async {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription('Cannot evaluate while not in-progress');
    }

    if (currentState.remainingImpressions.isEmpty) {
      repository.update(PracticeModel.finished(currentState.allImpressions));
      return;
    }

    repository.update(currentState.copyWith(
        pausedPercentage: null,
        revealed: false,
        speechPlayed: false,
        remainingImpressions: currentState.remainingImpressions.sublist(1),
        currentImpression: currentState.remainingImpressions.first,
        nextStepTime: _getHiddenStateExpiry(),
        currentStepStart: DateTime.now()));

    await apiService.postImpression(currentState.currentImpression, true);
  }

  Future evaluateWrong() async {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription('Cannot evaluate while not in-progress');
    }

    if (currentState.remainingImpressions.isEmpty) {
      repository.update(currentState.copyWith(
          pausedPercentage: null,
          revealed: false,
          nextStepTime: _getHiddenStateExpiry(),
          currentStepStart: DateTime.now()));
      return;
    }

    final nextImpressions = currentState.remainingImpressions
        .shuffleElementIntoListUpToTwice(currentState.currentImpression)
        .toList();

    final nextCurrentImpression = nextImpressions.first;
    final nextRemainingImpressions = nextImpressions.sublist(1);

    repository.update(currentState.copyWith(
        pausedPercentage: null,
        revealed: false,
        speechPlayed: false,
        remainingImpressions: nextRemainingImpressions,
        currentImpression: nextCurrentImpression,
        nextStepTime: _getHiddenStateExpiry(),
        currentStepStart: DateTime.now()));

    await apiService.postImpression(currentState.currentImpression, false);
  }

  String? getSpeechToPlay() {
    final currentState = repository.current;

    if (currentState is! PracticeModelInProgress) {
      return null;
    }

    if (currentState.speechPlayed) {
      return null;
    }

    final currentImpression = currentState.currentImpression;
    if (currentImpression is! SenseGuessImpression) {
      return null;
    }

    return currentImpression.speechPath;
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

    if (currentState.currentImpression
        is GeneratedSentenceWithParticlesSelectImpression) {
      return currentState.revealed
          ? ImpressionViewType.multiselectRevealed
          : ImpressionViewType.multiselectHidden;
    }

    return currentState.currentImpression is NewCardImpression
        ? ImpressionViewType.wordDiscover
        : currentState.revealed
            ? ImpressionViewType.wordRevealed
            : ImpressionViewType.wordHidden;
  }

  Impression getImpression() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      throw ErrorDescription(
          'Practice is not in progress, cannot get impression');
    }

    return currentState.currentImpression;
  }

  String getHintText() {
    final impression = getImpression();

    if (impression is! CardImpression) {
      return '';
    }

    if (impression.card.type == CardType.grammar) {
      return impression is KanaGuessImpression
          ? "the grammar meaning"
          : "the grammar";
    }

    return impression is KanaGuessImpression ? 'the kana' : 'the meaning';
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

  double getElapsedPercentage() {
    final model = repository.current;
    if (model is! PracticeModelInProgress ||
        model.nextStepTime == null ||
        model.currentStepStart == null) {
      return 0;
    }

    if (model.pausedPercentage != null) {
      return model.pausedPercentage!;
    }

    final maxOffset = model.nextStepTime!.millisecondsSinceEpoch -
        model.currentStepStart!.millisecondsSinceEpoch;

    final elapsed = DateTime.now().millisecondsSinceEpoch -
        model.currentStepStart!.millisecondsSinceEpoch;

    final percentage = min(elapsed / maxOffset, 1.0);
    return percentage;
  }

  void pauseNextStepTimer() {
    final currentState = repository.current;

    if (currentState is! PracticeModelInProgress) {
      return;
    }

    final currentElapsedPercentage = getElapsedPercentage();
    repository.update(
        currentState.copyWith(pausedPercentage: currentElapsedPercentage));
  }

  void resumeNextStepTimer(bool recalculateStepTimings) {
    final currentState = repository.current;

    if (currentState is! PracticeModelInProgress ||
        currentState.pausedPercentage == null) {
      return;
    }

    if (!recalculateStepTimings) {
      repository.update(currentState.copyWith(pausedPercentage: null));
      return;
    }

    final maxDuration = currentState.revealed
        ? _revealedStateMaxDuration
        : _hiddenStateMaxDuration;

    final elapsedDuration = maxDuration * (currentState.pausedPercentage!);
    final currentStepStart = DateTime.now().subtract(elapsedDuration);
    final nextStepStart = currentStepStart.add(maxDuration);

    repository.update(currentState.copyWith(
        pausedPercentage: null,
        currentStepStart: currentStepStart,
        nextStepTime: nextStepStart));
  }
}
