import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/empty.dart';

class CardFuriganaText extends StatelessWidget {
  final String? furigana;
  final int maxLength;
  final Color? color;

  const CardFuriganaText(this.furigana,
      {super.key, this.maxLength = 20, this.color});

  @override
  Widget build(BuildContext context) {
    if (furigana == null || furigana!.isEmpty) {
      return const Empty();
    }

    final furiganaClipped = furigana.ellipsis(maxLength);

    return DescriptionRichText([
      TextSpan(
          text: furiganaClipped,
          style: TextStyle(
              color: color ?? getDescriptionColor(context), fontSize: 12))
    ]);
  }
}
