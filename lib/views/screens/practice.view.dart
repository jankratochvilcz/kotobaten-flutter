import 'dart:async';
import 'dart:io';
import 'dart:math';

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

enum AnimationType { rotate, slide }

class PracticeView extends HookConsumerWidget {
  const PracticeView({Key? key}) : super(key: key);
  Widget _cardFlipTransition(
      Widget widget, Animation<double> animation, bool isFrontWidget) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = isFrontWidget;
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: (Matrix4.rotationY(value)..setEntry(3, 0, tilt)),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  Widget _cardSlideTransition(
      Widget widget, Animation<double> animation, bool isFrontWidget) {
    final translateAnim = Tween<double>(begin: 600, end: 0).animate(animation);
    return AnimatedBuilder(
      animation: translateAnim,
      child: widget,
      builder: (context, widget) {
        return Transform(
          transform: Matrix4.translationValues(
              widget is! ImpressionHidden
                  ? translateAnim.value * -1
                  : 0.toDouble(),
              0,
              0),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

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

      final animationType =
          practiceService.getImpressionViewType() == ImpressionViewType.revealed
              ? AnimationType.rotate
              : AnimationType.slide;

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
                if (impressionView != null)
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 800),
                      transitionBuilder: animationType == AnimationType.rotate
                          ? (widget, animation) => _cardFlipTransition(
                              widget,
                              animation,
                              practiceService.getImpressionViewType() ==
                                      ImpressionViewType.revealed
                                  ? widget is! ImpressionHidden
                                  : widget is ImpressionHidden)
                          : (widget, animation) => _cardSlideTransition(
                              widget,
                              animation,
                              practiceService.getImpressionViewType() ==
                                  ImpressionViewType.revealed),
                      switchInCurve: Curves.easeIn,
                      switchOutCurve: Curves.easeIn.flipped,
                      child: impressionView)
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
