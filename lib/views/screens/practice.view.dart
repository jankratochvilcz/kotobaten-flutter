import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/animations/flip.dart';
import 'package:kotobaten/views/atoms/animations/slide_out.dart';
import 'package:kotobaten/views/molecules/windowing_app_bar.dart';
import 'package:kotobaten/views/organisms/loading.dart' as loading;
import 'package:kotobaten/views/organisms/practice/impression_actions_for_view_type.dart';
import 'package:kotobaten/views/organisms/practice/impression_background_cards.dart';
import 'package:kotobaten/views/organisms/practice/impression_for_view_type.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_new.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';
import 'package:kotobaten/views/organisms/practice_onboarding.dart';
import 'package:kotobaten/views/organisms/progress_bar.dart';

enum AnimationType { rotate, slide }

class PracticeView extends HookConsumerWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final args =
        ModalRoute.of(context)!.settings.arguments as PracticeArguments;

    final practiceService = ref.watch(practiceServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);
    final model = ref.watch(practiceRepositoryProvider);

    final currentStateProgress = useState(0.0);
    final requiresOnboardingOverlay = useState(args.showOnboarding);

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

    if (model is PracticeModelInProgress && requiresOnboardingOverlay.value) {
      Future.microtask(() {
        practiceService.pauseNextStepTimer();
        showPracticeOnboardingSheet(context,
            onClose: () => practiceService.resumeNextStepTimer(true));
        requiresOnboardingOverlay.value = false;
      });
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

    var impressionViewType = practiceService.getImpressionViewType();

    if (model is PracticeModelInProgress) {
      final currentImpressionViewType = practiceService.getImpressionViewType();
      final speechPath = practiceService.getSpeechToPlay();
      if (speechPath != null) {
        AudioPlayer().play(speechPath);
        Future.microtask(practiceService.markSpeechAsPlayed);
      }

      final animationType =
          currentImpressionViewType != ImpressionViewType.revealed
              ? AnimationType.rotate
              : AnimationType.slide;

      final cards = getBackgroundCards(
          getBackgroundCardsCount(impressionViewType, cardsRemaining),
          Theme.of(context).scaffoldBackgroundColor);

      var currentImpressionInSwitcher = AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: animationType != AnimationType.rotate
            ? (widget, animation) => flip(
                widget,
                animation,
                currentImpressionViewType == ImpressionViewType.revealed
                    ? widget is! ImpressionHidden
                    : widget is ImpressionHidden)
            : (widget, animation) => slideOut(
                widget,
                animation,
                (currentImpressionViewType != ImpressionViewType.revealed &&
                        widget is ImpressionRevealed) ||
                    (currentImpressionViewType == ImpressionViewType.hidden &&
                        widget is ImpressionNew),
                MediaQuery.of(context).size.width >= minimumDesktopSize),
        switchInCurve: animationType == AnimationType.rotate
            ? Curves.easeInBack
            : Curves.easeInCubic,
        switchOutCurve: animationType == AnimationType.rotate
            ? Curves.easeInBack.flipped
            : Curves.easeInCubic.flipped,
        child: getImpressionForViewType(
            impressionViewType,
            practiceService.getPrimaryText(),
            practiceService.getSecondaryText(),
            practiceService.getFurigana(),
            practiceService.getHintText(),
            practiceService.getNote()),
        layoutBuilder: animationType == AnimationType.slide
            ? AnimatedSwitcher.defaultLayoutBuilder
            : (current, previous) => Stack(
                  children: current != null ? [current, ...previous] : previous,
                ),
      );

      cards.add(currentImpressionInSwitcher);

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
                Stack(
                  children: cards,
                ),
                GestureDetector(
                  onTapDown: (_) => practiceService.pauseNextStepTimer(),
                  onTapUp: (_) => practiceService.resumeNextStepTimer(false),
                  onTapCancel: () => practiceService.resumeNextStepTimer(true),
                  child: ImpressionActionsForViewType(
                      impressionViewType,
                      practiceService.getElapsedPercentage(),
                      practiceService.getHintText(),
                      (correct) => correct
                          ? practiceService.evaluateCorrect()
                          : practiceService.evaluateWrong(),
                      practiceService.reveal),
                )
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
