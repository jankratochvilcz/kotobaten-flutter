import 'package:flutter/material.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/empty.dart';

class CardSenseText extends StatelessWidget {
  final String? text;
  final int maxLength;
  final Color? color;

  const CardSenseText(this.text, {super.key, this.maxLength = 120, this.color});

  @override
  Widget build(BuildContext context) {
    if (text == null || text!.isEmpty) {
      return const Empty();
    }

    final textClipped = text!.ellipsis(maxLength);

    return DescriptionRichText(
        [TextSpan(text: textClipped, style: const TextStyle(fontSize: 16))]);
  }
}
