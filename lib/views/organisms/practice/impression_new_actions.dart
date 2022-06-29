import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';

class ImpressionNewActions extends StatelessWidget {
  final void Function() onDiscovered;

  const ImpressionNewActions(this.onDiscovered, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {LogicalKeySet(LogicalKeyboardKey.enter): onDiscovered},
        child: Focus(
            autofocus: true,
            child: Column(children: [
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
