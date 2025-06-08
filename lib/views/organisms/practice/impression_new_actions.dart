import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/views/molecules/button.dart';

class ImpressionNextActions extends StatelessWidget {
  final void Function() onClick;
  final FocusNode focusNode;

  const ImpressionNextActions(this.onClick, this.focusNode, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {LogicalKeySet(LogicalKeyboardKey.enter): onClick},
        child: Focus(
            autofocus: false,
            focusNode: focusNode,
            debugLabel: 'ImpressionNextActions',
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
