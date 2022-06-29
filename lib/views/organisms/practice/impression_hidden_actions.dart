import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/molecules/button.dart';

class ImpressionHiddenActions extends StatelessWidget {
  final String hintText;
  final VoidCallback revealAnswer;
  final double timeElapsedPercentage;

  const ImpressionHiddenActions(
      this.hintText, this.revealAnswer, this.timeElapsedPercentage,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {LogicalKeySet(LogicalKeyboardKey.enter): revealAnswer},
        child: Focus(
            autofocus: true,
            child: Column(children: [
              Padding(
                  padding: bottomPadding(PaddingType.xLarge),
                  child: DescriptionRichText([
                    const TextSpan(text: 'Try to remember '),
                    TextSpan(
                        text: hintText,
                        style: const TextStyle(fontWeight: FontWeight.w900)),
                    const TextSpan(text: ' for this card.')
                  ])),
              Button(
                'Reveal answer',
                revealAnswer,
                type: ButtonType.primaryProgress,
                progressPercentage: timeElapsedPercentage,
                icon: Icons.remove_red_eye_outlined,
                size: ButtonSize.big,
                shortcut: '⏎',
              )
            ])));
  }
}
