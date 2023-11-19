import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
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

  const ImpressionCard(this.text,
      {Key? key,
      this.secondaryText,
      this.furigana,
      this.note,
      this.accented = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLongSecondaryText = (secondaryText?.length ?? 0) > 16;
    final isLongPrimaryText = text.length > 10;

    return Padding(
        padding: allPadding(PaddingType.xxLarge),
        child: Center(
            child: Card(
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
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                getDescriptionColor(context)))
                                  ]),
                                Heading(
                                  text,
                                  HeadingStyle.h1,
                                  textAlign: TextAlign.center,
                                  fontSizeOverride:
                                      isLongPrimaryText ? 16 : null,
                                  fontWeightOverride: isLongPrimaryText
                                      ? FontWeight.normal
                                      : null,
                                ),
                                if (secondaryText?.isNotEmpty ?? false)
                                  Heading(secondaryText ?? '', HeadingStyle.h2,
                                      textAlign: TextAlign.center,
                                      fontWeightOverride: isLongSecondaryText
                                          ? FontWeight.normal
                                          : null,
                                      fontSizeOverride:
                                          isLongSecondaryText ? 16 : null),
                                if (note?.isNotEmpty ?? false)
                                  Padding(
                                      padding: topPadding(PaddingType.xLarge),
                                      child: Description(note!))
                              ],
                            ))))))));
  }
}
