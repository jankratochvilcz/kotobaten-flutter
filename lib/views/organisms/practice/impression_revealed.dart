import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionRevealed extends StatelessWidget {
  final String primaryText;
  final String? secondaryText;
  final String? furiganaText;

  final void Function(bool) onAnswered;

  const ImpressionRevealed(
      this.primaryText, this.secondaryText, this.furiganaText, this.onAnswered,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {
          LogicalKeySet(LogicalKeyboardKey.keyN): () => onAnswered(false),
          LogicalKeySet(LogicalKeyboardKey.enter): () => onAnswered(true)
        },
        child: Focus(
            autofocus: true,
            child: Column(children: [
              ImpressionCard(primaryText,
                  secondaryText: secondaryText, furigana: furiganaText),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button('Not there yet.', () => onAnswered(false),
                      icon: Icons.close, color: Colors.black45),
                  Button(
                    'Got it!',
                    () => onAnswered(true),
                    icon: Icons.check,
                    color: Colors.green,
                  )
                ],
              )
            ])));
  }
}
