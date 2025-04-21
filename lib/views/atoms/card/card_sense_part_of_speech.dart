import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/empty.dart';

class CardSensePartOfSpeechText extends StatelessWidget {
  final String? text;
  final int maxLength;
  final Color? color;

  const CardSensePartOfSpeechText(this.text,
      {super.key, this.maxLength = 60, this.color});

  @override
  Widget build(BuildContext context) {
    if (text == null || text!.isEmpty) {
      return const Empty();
    }

    final textClipped = text!.ellipsis(maxLength);

    return DescriptionRichText([
      TextSpan(
          text: textClipped,
          style: TextStyle(
              fontSize: textSizeSmall, color: getDescriptionColor(context)))
    ]);
  }
}
