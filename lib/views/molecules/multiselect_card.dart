import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_option.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/organisms/practice/impression_new_actions.dart';

const double cardSize = 300;

const keyMap = {
  0: LogicalKeyboardKey.digit1,
  1: LogicalKeyboardKey.digit2,
  2: LogicalKeyboardKey.digit3,
  3: LogicalKeyboardKey.digit4,
  4: LogicalKeyboardKey.digit5,
  5: LogicalKeyboardKey.digit6,
  6: LogicalKeyboardKey.digit7,
  7: LogicalKeyboardKey.digit8,
  8: LogicalKeyboardKey.digit9,
};

class MultiselectCard extends HookConsumerWidget {
  final GeneratedSentenceWithParticlesSelectImpression impression;

  const MultiselectCard({Key? key, required this.impression}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedOption = useState<int?>(null);
    var practiceModel = ref.watch(practiceRepositoryProvider);
    var practiceService = ref.read(practiceServiceProvider);

    if (practiceModel is! PracticeModelInProgress) {
      return const Empty();
    }

    useEffect(() {
      selectedOption.value = null;
      return null;
    }, [practiceModel.remainingImpressions]);

    onSelected(selectedIndex) {
      practiceService.reveal(
          isCorrect: impression.correctOption == selectedIndex);
      selectedOption.value = selectedIndex;
    }

    var optionShortcuts =
        Map.fromEntries(impression.options.asMap().entries.map(
              (entry) => MapEntry(
                LogicalKeySet(keyMap[entry.key]!),
                () => onSelected(entry.key),
              ),
            ));

    var pauseShortcuts = {
      LogicalKeySet(LogicalKeyboardKey.space): () =>
          practiceService.togglePause(),
    };

    var nextShortcuts = {
      LogicalKeySet(LogicalKeyboardKey.enter): () => practiceService.nextCard(),
    };

    return CallbackShortcuts(
        bindings: practiceModel.revealed
            ? {...nextShortcuts, ...pauseShortcuts}
            : {...optionShortcuts, ...pauseShortcuts},
        child: Focus(
            autofocus: true,
            debugLabel: 'MultiselectCard',
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  getPadding(PaddingType.small),
                  getPadding(PaddingType.xxLarge),
                  getPadding(PaddingType.small),
                  getPadding(PaddingType.xxLarge)),
              child: Center(
                  child: Column(children: [
                Card(
                  elevation: 5,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: cardSize),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Padding(
                        padding: allPadding(PaddingType.standard),
                        child: Column(
                          children: [
                            Text(
                              impression.sense,
                              style: const TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: impression.options
                                    .map((sentence) => SentenceRowWidget(
                                        impression.options.indexOf(sentence),
                                        sentence,
                                        impression,
                                        onSelected,
                                        selectedOption.value ==
                                            impression.options
                                                .indexOf(sentence),
                                        practiceModel.revealed
                                            ? (impression.options
                                                    .indexOf(sentence) ==
                                                impression.correctOption)
                                            : null))
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (practiceModel.revealed)
                  Padding(
                    padding:
                        EdgeInsets.only(top: getPadding(PaddingType.xxLarge)),
                    child: Column(children: [
                      Padding(
                          padding: bottomPadding(PaddingType.xLarge),
                          child: ImpressionNextActions(
                              () => practiceService.nextCard(), FocusNode())),
                      DescriptionRichText(
                        [TextSpan(text: impression.explanation)],
                        textAlign: TextAlign.center,
                        maxWidth: 300,
                      )
                    ]),
                  ),
                if (!practiceModel.revealed)
                  Padding(padding: topPadding(PaddingType.xLarge)),
                if (!practiceModel.revealed)
                  const DescriptionRichText(
                    [TextSpan(text: "Select the correct option.")],
                    textAlign: TextAlign.center,
                  )
              ])),
            )));
  }
}

class SentenceRowWidget extends HookConsumerWidget {
  final int index;
  final bool isSelected;
  final Sentence sentence;
  final bool? isCorrect;
  final GeneratedSentenceWithParticlesSelectImpression impression;

  final ValueChanged<int> onSelected;

  const SentenceRowWidget(this.index, this.sentence, this.impression,
      this.onSelected, this.isSelected, this.isCorrect,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var hoverActive = useState(false);
    var canSelect = isCorrect == null;

    var practiceModel = ref.watch(practiceRepositoryProvider);

    if (practiceModel is! PracticeModelInProgress) {
      return const Empty();
    }

    useEffect(() {
      hoverActive.value = false;
      return null;
    }, [practiceModel.remainingImpressions]);

    return Expanded(
        child: InkWell(
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (sentence.kanaOnly.isNotEmpty)
                      Text(
                        sentence.kanaOnly,
                        style: TextStyle(
                            fontSize: textSizeExtraSmall,
                            color: getDescriptionColor(context)),
                      ),
                    Text(
                      sentence.withKanji,
                      style: const TextStyle(fontSize: 16),
                    )
                  ]),
            ),
          ],
        ),
        Stack(children: [
          Container(
            decoration: isSelected
                ? BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  )
                : null,
            child: canSelect && hoverActive.value
                ? Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withAlpha((0.6 * 255).round()),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  )
                : null,
          ),
          if (!canSelect && shouldShowOptionIcon(isCorrect!, isSelected))
            Positioned(
              right: 12,
              top: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Theme.of(context).colorScheme.surface.withOpacity(0.8),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    getOptionIconRevealed(isCorrect!, isSelected),
                    size: 24,
                    color: getOptionIconColorRevealed(
                        isCorrect!, isSelected, context),
                  ),
                ),
              ),
            ),
        ])
      ]),
      onTap: canSelect ? () => onSelected(index) : null,
      onHover: canSelect ? (hovered) => hoverActive.value = hovered : null,
    ));
  }
}

bool shouldShowOptionIcon(bool isCorrect, bool isSelected) {
  return isSelected || isCorrect;
}

IconData? getOptionIconRevealed(bool isCorrect, bool isSelected) {
  if (isSelected && isCorrect) {
    return Icons.check_circle;
  }

  if (isSelected && !isCorrect) {
    return Icons.cancel;
  }

  if (!isSelected && isCorrect) {
    return Icons.check_circle;
  }

  return null;
}

Color getOptionIconColorRevealed(
    bool isCorrect, bool isSelected, BuildContext context) {
  if (isSelected && isCorrect) {
    return Colors.greenAccent;
  }

  if (isSelected && !isCorrect) {
    return Colors.redAccent;
  }

  if (!isSelected && isCorrect) {
    return getDescriptionColor(context);
  }

  return Colors.transparent;
}
