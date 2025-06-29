import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';

class ImpressionRevealedActions extends StatelessWidget {
  final void Function(bool) onAnswered;
  final VoidCallback toggleTimer;
  final FocusNode focusNode;

  const ImpressionRevealedActions(
      this.onAnswered, this.toggleTimer, this.focusNode,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {
          LogicalKeySet(LogicalKeyboardKey.keyN): () => onAnswered(false),
          LogicalKeySet(LogicalKeyboardKey.enter): () => onAnswered(true),
          LogicalKeySet(LogicalKeyboardKey.space): toggleTimer
        },
        child: Focus(
            autofocus: false,
            focusNode: focusNode,
            debugLabel: 'ImpressionRevealedActions',
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
