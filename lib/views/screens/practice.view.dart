import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/molecules/windowing_app_bar.dart';
import 'package:kotobaten/views/organisms/loading.dart' as loading;
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_new.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';
import 'package:kotobaten/views/organisms/progress_bar.dart';

class PracticeView extends HookConsumerWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final practiceService = ref.watch(practiceServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);
    final model = ref.watch(practiceRepositoryProvider);

    final currentStateProgress = useState(0.0);

    final progressTimer = Timer(const Duration(milliseconds: 25), () {
      final currentPercentage = practiceService.getElapsedPercentage();

      if (currentStateProgress.value == currentPercentage) {
        return;
      }

      currentStateProgress.value = currentPercentage;

      if (currentPercentage >= 1) {
        switch (practiceService.getImpressionViewType()) {
          case ImpressionViewType.hidden:
            practiceService.reveal();
            break;
          case ImpressionViewType.revealed:
            practiceService.evaluateWrong();
            break;
          default:
        }
      }
    });

    if (model is PracticeModelInitial) {
      Future.microtask(() => practiceService.initialize());
    }

    if (model is PracticeModelFinished && model.navigatedAway != true) {
      Future.microtask(() async {
        progressTimer.cancel();
        practiceService.endSession();
        await navigationService.goPostPractice(context);
      });
    }

    final cardsRemaining =
        practiceService.getCurrentAndRemainingImpressions().length;

    Widget? impressionView;
    switch (practiceService.getImpressionViewType()) {
      case ImpressionViewType.hidden:
        impressionView = ImpressionHidden(
            practiceService.getPrimaryText(),
            practiceService.getHintText(),
            practiceService.reveal,
            currentStateProgress.value,
            cardsRemaining);
        break;
      case ImpressionViewType.revealed:
        impressionView = ImpressionRevealed(
            practiceService.getPrimaryText(),
            practiceService.getSecondaryText(),
            practiceService.getFurigana(),
            (correct) => correct
                ? practiceService.evaluateCorrect()
                : practiceService.evaluateWrong(),
            currentStateProgress.value,
            practiceService.getNote(),
            cardsRemaining);
        break;
      case ImpressionViewType.discover:
        impressionView = ImpressionNew(
            practiceService.getPrimaryText(),
            practiceService.getSecondaryText(),
            practiceService.getFurigana(),
            practiceService.evaluateCorrect,
            practiceService.getNote(),
            cardsRemaining);
        break;
      default:
    }

    if (model is PracticeModelInProgress) {
      final speechPath = practiceService.getSpeechToPlay();
      if (speechPath != null) {
        AudioPlayer().play(speechPath);
        Future.microtask(practiceService.markSpeechAsPlayed);
      }

      return WillPopScope(
        child: Scaffold(
            appBar: const WindowingAppBar(),
            body: SafeArea(
                child: Column(
              children: [
                Padding(
                    padding: topPadding(kIsWeb || !Platform.isWindows
                        ? PaddingType.xxLarge
                        : PaddingType.standard),
                    child: ProgressBar(practiceService.getProgress())),
                if (impressionView != null) impressionView
              ],
            ))),
        onWillPop: () {
          practiceService.reset();
          return Future.value(true);
        },
      );
    }

    return const loading.Loading();
  }
}
