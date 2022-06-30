import 'package:flutter/material.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionHidden extends StatelessWidget {
  final String text;
  final String hintText;

  const ImpressionHidden(this.text, this.hintText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImpressionCard(
      text,
    );
  }
}
