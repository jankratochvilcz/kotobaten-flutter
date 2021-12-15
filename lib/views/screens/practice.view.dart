import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/organisms/loading.dart' as loading;
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_new.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';
import 'package:kotobaten/views/screens/practice.model.dart';
import 'package:kotobaten/views/screens/practice.viewmodel.dart';

final _viewModelProvider =
    StateNotifierProvider<PracticeViewModel, PracticeModel>((ref) =>
        PracticeViewModel(ref.watch(kotobatenApiServiceProvider),
            ref.watch(userRepositoryProvider.notifier)));

class PracticeView extends HookConsumerWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    if (model is Initial) {
      Future.microtask(() => viewModel.initialize());
    }

    if (model is Finished) {
      Future.microtask(() {
        viewModel.reset();
        Navigator.pop(context);
      });
    }

    Widget? impressionView;
    switch (viewModel.getImpressionViewType()) {
      case ImpressionViewType.hidden:
        impressionView = ImpressionHidden(viewModel.getPrimaryText(),
            viewModel.getHintText(), viewModel.reveal);
        break;
      case ImpressionViewType.revealed:
        impressionView = ImpressionRevealed(
            viewModel.getPrimaryText(),
            viewModel.getSecondaryText(),
            viewModel.getFurigana(),
            (correct) => correct
                ? viewModel.evaluateCorrect()
                : viewModel.evaluateWrong());
        break;
      case ImpressionViewType.discover:
        impressionView = ImpressionNew(
            viewModel.getPrimaryText(),
            viewModel.getSecondaryText(),
            viewModel.getFurigana(),
            viewModel.evaluateCorrect);
        break;
      default:
    }

    if (model is InProgress) {
      final speechPath = viewModel.getSpeechToPlay();
      if (speechPath != null) {
        AudioPlayer().play(speechPath);
        Future.microtask(viewModel.markSpeechAsPlayed);
      }

      return Scaffold(
          body: SafeArea(
              child: Column(
        children: [
          Padding(
              padding: topPadding(PaddingType.largePlus),
              child: CircularProgressIndicator(
                backgroundColor: Colors.black12,
                strokeWidth: 2,
                value: viewModel.getProgress(),
              )),
          if (impressionView != null) impressionView
        ],
      )));
    }

    return const loading.Loading();
  }
}
