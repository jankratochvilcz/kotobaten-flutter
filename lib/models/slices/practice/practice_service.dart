import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_guess_impression.dart';
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

    // A demo grammar card for quick debugging
    // final grammarImpression = Impression.initialized(
    //     CardInitialized(1, "みたい", "try to do something", "", DateTime.now(),
    //         "これをやってみたい", CardType.grammar),
    //     ImpressionType.sense,
    //     null);

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

    if (currentState.currentImpression is MultiselectImpression) {
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

  String? _getPrimaryTextRevealedState(Impression impression) {
    if (impression is CardImpression) {
      if (impression.card.type == CardType.grammar) {
        return impression.card.sense;
      }

      return impression.card.kanji ?? impression.card.kana;
    } else if (impression is GeneratedSentenceGuessImpression) {
      return impression.withKanji;
    } else {
      throw Exception(
          "Unsupported impression type for primary text revealed state: ${impression.type}");
    }
  }

  String? _getPrimaryTextDefaultState(Impression impression) {
    if (impression is SenseGuessImpression) {
      return impression.card.kana ?? impression.card.kanji;
    } else if (impression is KanaGuessImpression) {
      return impression.card.type == CardType.grammar
          ? impression.card.sense
          : (impression.card.kanji ?? impression.card.sense);
    } else if (impression is GeneratedSentenceGuessImpression) {
      return impression.withKanji;
    } else {
      throw Exception(
          "Unsupported impression type for primary text default state: ${impression.type}");
    }
  }

  String getPrimaryText() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      return '';
    }

    final impression = currentState.currentImpression;
    final primaryText = currentState.revealed
        ? _getPrimaryTextRevealedState(impression)
        : _getPrimaryTextDefaultState(impression);

    return primaryText ?? '';
  }

  String? getFurigana() {
    final currentState = repository.current;

    if (currentState is! PracticeModelInProgress || !currentState.revealed) {
      return null;
    }

    final impression = currentState.currentImpression;

    if (impression is GeneratedSentenceGuessImpression) {
      return impression.kanaOnly;
    }

    if (impression is CardImpression &&
        impression.card.type != CardType.grammar) {
      return impression.card.kana;
    }

    return null;
  }

  String? getSecondaryText() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress || !currentState.revealed) {
      return null;
    }

    final impression = currentState.currentImpression;

    if (impression is CardImpression) {
      return impression.card.type == CardType.grammar
          ? impression.card.kanji
          : impression.card.sense;
    } else if (impression is GeneratedSentenceGuessImpression) {
      return impression.sense;
    } else {
      return null;
    }
  }

  String? getNote() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress || !currentState.revealed) {
      return null;
    }

    final currentImpression = currentState.currentImpression;

    if (currentImpression is! CardImpression) {
      return null;
    }

    return currentImpression.card.note;
  }

  String getHintText() {
    final currentState = repository.current;
    if (currentState is! PracticeModelInProgress) {
      return '';
    }

    final currentImpression = currentState.currentImpression;

    if (currentImpression is CardImpression &&
        currentImpression.card.type == CardType.grammar) {
      return currentImpression is KanaGuessImpression
          ? "the grammar meaning"
          : "the grammar";
    }

    return currentState.currentImpression is KanaGuessImpression
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
