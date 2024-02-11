import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';

const double pi = 3.141592653589793238;
const double cardSize = 300;

enum ImpressionCardAccentType { none, newCard, grammar }

class ImpressionCard extends StatelessWidget {
  final String text;
  final String? secondaryText;
  final String? furigana;
  final String? note;
  final ImpressionCardAccentType accent;

  const ImpressionCard(this.text,
      {Key? key,
      this.secondaryText,
      this.furigana,
      this.note,
      this.accent = ImpressionCardAccentType.none})
      : super(key: key);

  Color? _getAccentColor(
      ImpressionCardAccentType accentType, BuildContext context) {
    switch (accentType) {
      case ImpressionCardAccentType.newCard:
        return Colors.orangeAccent;
      case ImpressionCardAccentType.grammar:
        return Theme.of(context).colorScheme.secondary;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLongSecondaryText = (secondaryText?.length ?? 0) > 16;
    final isLongPrimaryText = text.length > 10;
    final accentColor = _getAccentColor(accent, context);

    return Padding(
        padding: EdgeInsets.fromLTRB(
            getPadding(PaddingType.small),
            getPadding(PaddingType.xxLarge),
            getPadding(PaddingType.small),
            getPadding(PaddingType.xxLarge)),
        child: Center(
            child: Card(
                elevation: accent == ImpressionCardAccentType.newCard ? 10 : 5,
                shadowColor: accentColor,
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
                                  DescriptionRichText(
                                    [
                                      TextSpan(
                                          text: furigana,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  getDescriptionColor(context)))
                                    ],
                                    textAlign: TextAlign.center,
                                  ),
                                Heading(
                                  text,
                                  HeadingStyle.h1,
                                  textAlign: TextAlign.center,
                                  fontSizeOverride:
                                      isLongPrimaryText ? 16 : null,
                                  fontWeightOverride: isLongPrimaryText
                                      ? FontWeight.normal
                                      : null,
                                  colorOverride: accentColor,
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
                                      child: Description(note.ellipsis(40)!))
                              ],
                            ))))))));
  }
}
