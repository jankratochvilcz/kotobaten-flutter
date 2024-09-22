import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';

const double cardSize = 300;

class MultiselectCard extends StatelessWidget {
  final GeneratedSentenceWithParticlesSelectImpression impression;
  final bool revealed;

  const MultiselectCard(
      {Key? key, required this.impression, required this.revealed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getPadding(PaddingType.small),
        getPadding(PaddingType.xxLarge),
        getPadding(PaddingType.small),
        getPadding(PaddingType.xxLarge),
      ),
      child: Center(
        child: Card(
          elevation: 5,
          shadowColor: Colors.grey,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: cardSize),
            child: AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: horizontalPadding(PaddingType.standard),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: impression.options
                        .map((currentCard) => buildSentenceRow(
                            impression.options.indexOf(currentCard),
                            currentCard.withKanji))
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

  Widget buildSentenceRow(int index, String? sentence) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "${index.toString()}.",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            sentence ?? '',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
