import 'package:flutter/material.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionNew extends StatelessWidget {
  final String primaryText;
  final String? secondaryText;
  final String? furiganaText;
  final String? note;

  const ImpressionNew(
      this.primaryText, this.secondaryText, this.furiganaText, this.note,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImpressionCard(primaryText,
        secondaryText: secondaryText,
        furigana: furiganaText,
        accented: true,
        note: note);
  }
}
