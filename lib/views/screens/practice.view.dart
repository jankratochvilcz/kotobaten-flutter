import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/organisms/impression_card.dart';
import 'package:kotobaten/views/screens/practice.model.dart';
import 'package:kotobaten/views/screens/practice.viewmodel.dart';

final _viewModelProvider =
    StateNotifierProvider<PracticeViewModel, PracticeModel>(
        (ref) => PracticeViewModel(ref.watch(kotobatenApiServiceProvider)));

class PracticeView extends HookConsumerWidget {
  const PracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    if (model is Initial) {
      Future.microtask(() => viewModel.initialize());
    }

    if (model is InProgress) {
      return Scaffold(
          body: SafeArea(
              child: Column(
        children: [
          Padding(
              padding: topPadding(PaddingType.largePlus),
              child: CircularProgressIndicator(
                value: (model.allImpressions.length -
                        model.remainingImpressions.length) /
                    model.allImpressions.length,
              )),
          Expanded(child: ImpressionCard(viewModel.getImpressionText())),
          Padding(
              padding: bottomPadding(PaddingType.largePlusPlus),
              child: !model.revealed
                  ? Column(children: [
                      Button(
                        'Reveal answer',
                        viewModel.reveal,
                        type: ButtonType.primary,
                        icon: Icons.remove_red_eye_outlined,
                        size: ButtonSize.big,
                      ),
                      Padding(
                          padding: topPadding(PaddingType.largePlus),
                          child: DescriptionRichText([
                            const TextSpan(text: 'Try to remember '),
                            TextSpan(
                                text: viewModel.getHintText(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900)),
                            const TextSpan(text: ' for this card.')
                          ]))
                    ])
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button('Not there yet.', viewModel.evaluateWrong,
                            icon: Icons.close, color: Colors.black45),
                        Button(
                          'Got it!',
                          viewModel.evaluateCorrect,
                          icon: Icons.check,
                          color: Colors.green,
                        )
                      ],
                    ))
        ],
      )));
    }

    return Text('loading');
  }
}
