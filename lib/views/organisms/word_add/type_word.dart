import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/kotobaten_api.dart';

class WordAddTypeWord extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final kotobatenApiService = ref.read(kotobatenApiServiceProvider);
    final isFuriganaFromSuggestions = useState(true);

    fillInFurigana(String kanji) async {
      if (!isFuriganaFromSuggestions.value) {
        // Let's not mess with the user input.
        return;
      }

      if (kanji.isEmpty) {
        kanaController.text = "";
        return;
      }

      final furiganaOptions = await kotobatenApiService.getFurigana(kanji);
      kanaController.text =
          furiganaOptions.isNotEmpty ? furiganaOptions[0] : "";
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: kanjiController,
          onChanged: (kanji) {
            fillInFurigana(kanji);
          },
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
          style: TextStyle(
              color: isFuriganaFromSuggestions.value
                  ? getDescriptionColor(context)
                  : null),
          onChanged: (text) {
            isFuriganaFromSuggestions.value = text.isNotEmpty ? false : true;
          },
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
              labelText: 'Translation',
              hintText: 'Word in your native language.',
              hintStyle: hintStyle),
        ),
        SizedBox(
          height: getPadding(PaddingType.small),
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
