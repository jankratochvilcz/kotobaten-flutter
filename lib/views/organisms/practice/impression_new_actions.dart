import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';

class ImpressionNextActions extends StatelessWidget {
  final void Function() onClick;

  const ImpressionNextActions(this.onClick, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {LogicalKeySet(LogicalKeyboardKey.enter): onClick},
        child: Focus(
            autofocus: true,
            child: Column(children: [
              Center(
                  child: Button(
                'Got it!',
                onClick,
                icon: Icons.lightbulb_outline,
                type: ButtonType.primary,
                size: ButtonSize.big,
                shortcut: '⏎',
              ))
            ])));
  }
}
