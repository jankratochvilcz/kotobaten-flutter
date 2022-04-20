import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';

const double pi = 3.141592653589793238;
const double cardSize = 300;

class ImpressionCard extends StatelessWidget {
  final String text;
  final String? secondaryText;
  final String? furigana;
  final String? note;
  final bool accented;
  final int backgroundCards;

  const ImpressionCard(this.text,
      {Key? key,
      this.secondaryText,
      this.furigana,
      this.note,
      this.accented = false,
      this.backgroundCards = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cards = <Widget>[];

    for (var i = 0; i < backgroundCards; i++) {
      cards.add(Transform.scale(
          scale: 1 - (backgroundCards - i) * 0.05,
          child: Transform.translate(
              offset: Offset(0, (backgroundCards - i) * -16),
              child: Card(
                color: Theme.of(context).scaffoldBackgroundColor,
                elevation: 2,
                child: const SizedBox(height: cardSize, width: cardSize),
              ))));
    }

    cards.add(Card(
        elevation: accented ? 10 : 5,
        shadowColor: accented ? Colors.orangeAccent : null,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: cardSize),
            child: AspectRatio(
                aspectRatio: 1,
                child: Padding(
                    padding: horizontalPadding(PaddingType.standard),
                    child: Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (furigana != null)
                          DescriptionRichText([
                            TextSpan(
                                text: furigana,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black54))
                          ]),
                        Heading(text, HeadingStyle.h1,
                            textAlign: TextAlign.center),
                        if (secondaryText?.isNotEmpty ?? false)
                          Heading(secondaryText ?? '', HeadingStyle.h2,
                              textAlign: TextAlign.center),
                        if (note?.isNotEmpty ?? false)
                          Padding(
                              padding: topPadding(PaddingType.xLarge),
                              child: Description(note!))
                      ],
                    )))))));

    return Padding(
        padding: allPadding(PaddingType.xxLarge),
        child: Center(child: Stack(children: cards)));
  }
}
