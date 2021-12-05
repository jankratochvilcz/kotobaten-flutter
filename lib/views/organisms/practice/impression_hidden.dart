import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

class ImpressionHidden extends StatelessWidget {
  final String text;
  final String hintText;
  final VoidCallback revealAnswer;

  const ImpressionHidden(this.text, this.hintText, this.revealAnswer,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
        bindings: {LogicalKeySet(LogicalKeyboardKey.enter): revealAnswer},
        child: Focus(
            autofocus: true,
            child: Column(children: [
              ImpressionCard(text),
              Column(children: [
                Button(
                  'Reveal answer',
                  revealAnswer,
                  type: ButtonType.primary,
                  icon: Icons.remove_red_eye_outlined,
                  size: ButtonSize.big,
                ),
                Padding(
                    padding: topPadding(PaddingType.largePlus),
                    child: DescriptionRichText([
                      const TextSpan(text: 'Try to remember '),
                      TextSpan(
                          text: hintText,
                          style: const TextStyle(fontWeight: FontWeight.w900)),
                      const TextSpan(text: ' for this card.')
                    ]))
              ])
            ])));
  }
}
