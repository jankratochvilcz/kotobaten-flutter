import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionNew extends StatelessWidget {
  final String primaryText;
  final String? secondaryText;
  final String? furiganaText;

  final void Function() onDiscovered;

  const ImpressionNew(this.primaryText, this.secondaryText, this.furiganaText,
      this.onDiscovered,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {LogicalKeySet(LogicalKeyboardKey.enter): onDiscovered},
        child: Focus(
            autofocus: true,
            child: Column(children: [
              ImpressionCard(primaryText,
                  secondaryText: secondaryText,
                  furigana: furiganaText,
                  accented: true),
              Center(
                  child: Button(
                'Got it!',
                onDiscovered,
                icon: Icons.lightbulb_outline,
                type: ButtonType.primary,
                size: ButtonSize.big,
                shortcut: '⏎',
              ))
            ])));
  }
}
