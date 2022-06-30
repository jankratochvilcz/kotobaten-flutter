import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';

class ImpressionRevealedActions extends StatelessWidget {
  final double timeElapsedPercentage;

  final void Function(bool) onAnswered;

  const ImpressionRevealedActions(this.onAnswered, this.timeElapsedPercentage,
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
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                        'Not there yet.',
                        () => onAnswered(false),
                        icon: Icons.close,
                        type: ButtonType.standardProgress,
                        progressPercentage: timeElapsedPercentage,
                        color: Colors.black45,
                        shortcut: 'n',
                      ),
                      Button(
                        'Got it!',
                        () => onAnswered(true),
                        icon: Icons.check,
                        color: Colors.green,
                        shortcut: '⏎',
                      )
                    ],
                  ))
            ])));
  }
}
