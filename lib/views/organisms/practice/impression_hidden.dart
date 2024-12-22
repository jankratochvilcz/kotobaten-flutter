import 'package:flutter/material.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionHidden extends StatelessWidget {
  final String text;
  final ImpressionCardAccentType accentType;

  const ImpressionHidden(this.text, this.accentType, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImpressionCard(
      text,
      accent: accentType,
    );
  }
}
