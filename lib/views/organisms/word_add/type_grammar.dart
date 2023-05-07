import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';

class WordAddTypeGrammar extends StatelessWidget {
  final TextEditingController senseController;
  final TextEditingController kanjiController;
  final TextEditingController kanaController;
  final TextEditingController noteController;

  final TextStyle hintStyle;

  final Function onEditComplete;

  const WordAddTypeGrammar(
      this.senseController,
      this.kanjiController,
      this.kanaController,
      this.noteController,
      this.hintStyle,
      this.onEditComplete,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: senseController,
          textInputAction: TextInputAction.next,
          validator: (value) {
            if ((value == null || value.isEmpty) &&
                (kanaController.text.isEmpty)) {
              return 'Fill in the grammatical form (e.g., ～みたい)';
            }

            return null;
          },
          decoration: InputDecoration(
              labelText: 'Grammar form',
              hintText: 'Fill in the grammatical form (e.g., ～みたい)',
              hintStyle: hintStyle),
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
        ),
        TextFormField(
          controller: kanjiController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Add a short explanation of the grammar.';
            }

            return null;
          },
          autofocus: true,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
              labelText: 'Explanation',
              hintText: 'Add a short explanation of the grammar.',
              hintStyle: hintStyle),
          maxLines: 6,
          minLines: 2,
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
        ),
        TextFormField(
          controller: noteController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              labelText: 'Example (optional)',
              hintText: 'Write an example sentence for the grammar.',
              hintStyle: hintStyle),
          maxLines: 6,
          minLines: 1,
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
        )
      ],
    );
  }
}
