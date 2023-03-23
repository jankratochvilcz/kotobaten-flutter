import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';

class WordAddTypeWord extends StatelessWidget {
  final TextEditingController senseController;
  final TextEditingController kanjiController;
  final TextEditingController kanaController;
  final TextEditingController noteController;

  final TextStyle hintStyle;

  final Function onEditComplete;

  const WordAddTypeWord(
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
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Add a meaning for the word you\'re adding';
            }

            return null;
          },
          autofocus: true,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
              labelText: 'Meaning',
              hintText: 'Word in your native language.',
              hintStyle: hintStyle),
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
        ),
        TextFormField(
          controller: kanjiController,
          textInputAction: TextInputAction.next,
          validator: (value) {
            if ((value == null || value.isEmpty) &&
                (kanaController.text.isEmpty)) {
              return 'Fill in either the kanji or kana.';
            }

            return null;
          },
          decoration: InputDecoration(
              labelText: 'Kanji',
              hintText: 'Skip if you\'re not learning kanji yet.',
              hintStyle: hintStyle),
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
        ),
        TextFormField(
          controller: kanaController,
          textInputAction: TextInputAction.next,
          validator: (value) {
            if ((value == null || value.isEmpty) &&
                (kanjiController.text.isEmpty)) {
              return 'You need to fill in at least either the kanji or kana.';
            }

            return null;
          },
          decoration: InputDecoration(
              labelText: 'Kana',
              hintText: 'Pronounciation of the word in hiragana.',
              hintStyle: hintStyle),
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
        ),
        TextFormField(
          onEditingComplete: () {
            onEditComplete();
          },
          controller: noteController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              labelText: 'Note (optional)',
              hintStyle: hintStyle,
              hintText: 'Anything worth noting down about the word.'),
        ),
      ],
    );
  }
}
