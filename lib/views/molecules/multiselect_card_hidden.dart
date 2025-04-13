import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_option.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';

const double cardSize = 300;

// class MultiselectCardRevealed extends HookConsumerWidget {
//   final GeneratedSentenceWithParticlesSelectImpression impression;
//   final Sentence sentence;
//
//   const MultiselectCardRevealed(this.impression, this.sentence, {super.key})
//
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Padding(padding: EdgeInsets.fromLTRB(
//         getPadding(PaddingType.small),
//         getPadding(PaddingType.xxLarge),
//         getPadding(PaddingType.small),
//         getPadding(PaddingType.xxLarge)), child: Center(child: Card(
//       elevation: 5,
//       child: ConstrainedBox(
//         constraints: const BoxConstraints(maxHeight: cardSize),
//         child: AspectRatio(
//           aspectRatio: 1,
//           child: Padding(
//             padding: allPadding(PaddingType.standard),
//             child: Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: impression.options
//                     .map((sentence) => SentenceRowWidget(
//                   // we want a 1-based index
//                     impression.options.indexOf(sentence),
//                     sentence,
//                     impression,
//                     practiceService))
//                     .toList(),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),),)
//   }}

class MultiselectCardHidden extends HookConsumerWidget {
  final GeneratedSentenceWithParticlesSelectImpression impression;
  final PracticeService practiceService;

  const MultiselectCardHidden(
      {Key? key, required this.impression, required this.practiceService})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          getPadding(PaddingType.small),
          getPadding(PaddingType.xxLarge),
          getPadding(PaddingType.small),
          getPadding(PaddingType.xxLarge)),
      child: Center(
        child: Card(
          elevation: 5,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: cardSize),
            child: AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: allPadding(PaddingType.standard),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: impression.options
                        .map((sentence) => SentenceRowWidget(
                            // we want a 1-based index
                            impression.options.indexOf(sentence),
                            sentence,
                            impression,
                            practiceService))
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SentenceRowWidget extends HookConsumerWidget {
  final int index;
  final Sentence sentence;
  final PracticeService practiceService;
  final GeneratedSentenceWithParticlesSelectImpression impression;

  const SentenceRowWidget(
      this.index, this.sentence, this.impression, this.practiceService,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var hoverActive = useState(false);

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
                    if (sentence.kanaOnly != null)
                      Text(
                        sentence.kanaOnly ?? '',
                        style: TextStyle(
                            fontSize: textSizeSmall,
                            color: getDescriptionColor(context)),
                      ),
                    Text(
                      sentence.withKanji ?? '',
                      style: const TextStyle(fontSize: 16),
                    )
                  ]),
            ),
          ],
        ),
        if (hoverActive.value)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withValues(alpha: 0.6), // Semi-transparent overlay
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
            ),
          )
      ]),
      onTap: () => impression.correctOption == index
          ? practiceService.evaluateCorrect()
          : practiceService.evaluateWrong(),
      onHover: (hovered) => hoverActive.value = hovered,
    ));
  }
}
