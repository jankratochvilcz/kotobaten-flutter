import 'package:flutter/material.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionRevealed extends StatelessWidget {
  final String primaryText;
  final String? secondaryText;
  final String? furiganaText;
  final String? note;
  final ImpressionCardAccentType? accent;

  const ImpressionRevealed(this.primaryText, this.secondaryText,
      this.furiganaText, this.note, this.accent,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImpressionCard(
      primaryText,
      secondaryText: secondaryText,
      furigana: furiganaText,
      note: note,
      accent: accent ?? ImpressionCardAccentType.none,
    );
  }
}
