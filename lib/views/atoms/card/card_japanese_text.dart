import 'package:flutter/material.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/views/atoms/empty.dart';

class CardJapaneseText extends StatelessWidget {
  final String? text;
  final int maxLength;
  final Color? color;

  const CardJapaneseText(this.text,
      {super.key, this.maxLength = 12, this.color});

  @override
  Widget build(BuildContext context) {
    if (text == null || text!.isEmpty) {
      return const Empty();
    }

    final textClipped = text!.ellipsis(maxLength);
    final fontSize =
        textClipped.length > 24 ? 12.0 : (textClipped.length > 4 ? 18.0 : 30.0);

    return Text(
      textClipped,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.w400, color: color),
    );
  }
}
