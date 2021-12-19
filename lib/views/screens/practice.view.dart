import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/views/organisms/loading.dart' as loading;
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_new.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';

class PracticeView extends HookConsumerWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final practiceService = ref.watch(practiceServiceProvider);
    final model = ref.watch(practiceRepositoryProvider);

    if (model is PracticeModelInitial) {
      Future.microtask(() => practiceService.initialize());
    }

    if (model is PracticeModelFinished) {
      Future.microtask(() {
        Navigator.pop(context);
      });
    }

    Widget? impressionView;
    switch (practiceService.getImpressionViewType()) {
      case ImpressionViewType.hidden:
        impressionView = ImpressionHidden(practiceService.getPrimaryText(),
            practiceService.getHintText(), practiceService.reveal);
        break;
      case ImpressionViewType.revealed:
        impressionView = ImpressionRevealed(
            practiceService.getPrimaryText(),
            practiceService.getSecondaryText(),
            practiceService.getFurigana(),
            (correct) => correct
                ? practiceService.evaluateCorrect()
                : practiceService.evaluateWrong());
        break;
      case ImpressionViewType.discover:
        impressionView = ImpressionNew(
            practiceService.getPrimaryText(),
            practiceService.getSecondaryText(),
            practiceService.getFurigana(),
            practiceService.evaluateCorrect);
        break;
      default:
    }

    if (model is PracticeModelInProgress) {
      final speechPath = practiceService.getSpeechToPlay();
      if (speechPath != null) {
        AudioPlayer().play(speechPath);
        Future.microtask(practiceService.markSpeechAsPlayed);
      }

      return Scaffold(
          body: SafeArea(
              child: Column(
        children: [
          Padding(
              padding: topPadding(PaddingType.xxLarge),
              child: CircularProgressIndicator(
                backgroundColor: Colors.black12,
                strokeWidth: 2,
                value: practiceService.getProgress(),
              )),
          if (impressionView != null) impressionView
        ],
      )));
    }

    return const loading.Loading();
  }
}
