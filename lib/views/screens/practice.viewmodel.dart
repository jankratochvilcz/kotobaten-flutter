import 'dart:async';
import 'dart:developer' as developer;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/impression.dart';
import 'package:kotobaten/models/impression_type.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/practice.model.dart';

enum ImpressionViewType { hidden, revealed, discover, none }

final practiceViewModelProvider =
    StateNotifierProvider<PracticeViewModel, PracticeModel>((ref) =>
        PracticeViewModel(ref.watch(kotobatenApiServiceProvider),
            ref.watch(userServiceProvider)));

class PracticeViewModel extends StateNotifier<PracticeModel> {
  final KotobatenApiService _apiService;
  final UserService _userService;

  PracticeViewModel(this._apiService, this._userService)
      : super(const PracticeModel.initial()) {
    addListener((state) {
      if (state is InProgress) {
        developer.log(
            state.remainingImpressions.isNotEmpty
                ? state.remainingImpressions
                    .map((x) =>
                        '${x.impressionType.toString().substring(15, 16)}-${x.card.sense}')
                    .reduce((a, b) => '$a,$b')
                : 'empty',
            name: 'practicemodel-changed');
      }
    });
  }

  void reset() {
    state = const PracticeModel.initial();
  }

  Future initialize() async {
    state = const PracticeModel.loading();

    final impressions = await _apiService.getImpressions();
    state = PracticeModel.inProgress(
        impressions, impressions.sublist(1), impressions.first, false, false);
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
        speechPlayed: false,
        remainingImpressions: currentState.remainingImpressions.sublist(1),
        currentImpression: currentState.remainingImpressions.first);

    _userService.updateStatistics(
        await _apiService.postImpression(currentState.currentImpression, true));
  }

  Future evaluateWrong() async {
    final currentState = state;
    if (currentState is! InProgress) {
      throw const Error('Cannot evaluate while not in-progress');
    }

    if (currentState.remainingImpressions.isEmpty) {
      state = currentState.copyWith(revealed: false);
      return;
    }

    final nextImpressions = currentState.remainingImpressions
        .shuffleElementIntoListUpToTwice(currentState.currentImpression)
        .toList();

    final nextCurrentImpression = nextImpressions.first;
    final nextRemainingImpressions = nextImpressions.sublist(1);

    state = currentState.copyWith(
        revealed: false,
        speechPlayed: false,
        remainingImpressions: nextRemainingImpressions,
        currentImpression: nextCurrentImpression);

    _userService.updateStatistics(await _apiService.postImpression(
        currentState.currentImpression, false));
  }

  String? getSpeechToPlay() {
    final currentState = state;
    return currentState is InProgress &&
            !currentState.speechPlayed &&
            currentState.currentImpression.speechPath != null &&
            currentState.currentImpression.impressionType != ImpressionType.kana
        ? currentState.currentImpression.speechPath
        : null;
  }

  markSpeechAsPlayed() {
    final currentState = state;
    if (currentState is InProgress) {
      state = currentState.copyWith(speechPlayed: true);
    }
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
    final currentState = state;
    if ((currentState is! InProgress ||
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
    final currentState = state;
    if (currentState is! InProgress ||
        (!currentState.revealed &&
            currentState.currentImpression.impressionType !=
                ImpressionType.discover)) {
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

  List<Impression> getCurrentAndRemainingImpressions() {
    final currentState = state;
    return currentState is InProgress
        ? [currentState.currentImpression, ...currentState.remainingImpressions]
        : <Impression>[];
  }
}
