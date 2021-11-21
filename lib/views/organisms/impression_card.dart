import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';

class ImpressionCard extends StatelessWidget {
  final String text;
  final String? secondaryText;
  final String? furigana;

  const ImpressionCard(this.text, {Key? key, this.secondaryText, this.furigana})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: allPadding(PaddingType.largePlus),
        child: Center(
            child: Card(
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
                                    style:
                                        const TextStyle(color: Colors.black54))
                              ]),
                            Heading(text, HeadingStyle.h1, textAlign: TextAlign.center),
                            if (secondaryText != null)
                              Heading(secondaryText ?? '', HeadingStyle.h2, textAlign: TextAlign.center)
                          ],
                        )))))));
  }
}
