import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/dictionary/dictionary_card.dart';
import 'package:kotobaten/views/atoms/card/card_furigana_text.dart';
import 'package:kotobaten/views/atoms/card/card_sense_text.dart';
import 'package:kotobaten/views/atoms/card/card_japanese_text.dart';
import 'package:kotobaten/views/atoms/description.dart';

String reduceSense(List<String> meanings) {
  return meanings.reduce(
    (soFar, current) => "$soFar, $current",
  );
}

class DictionaryCard extends ConsumerWidget {
  final DictionaryCardInitialized card;

  const DictionaryCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canDisplayFurigana = card.kanji.isNotEmpty;
    final sensesFormatted = card.senses.length > 1
        ? card.senses.map((sense) =>
            "${card.senses.indexOf(sense) + 1}. ${reduceSense(sense)}")
        : [reduceSense(card.senses.first)];

    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () => {},
            child: Card(
                child: Padding(
                    padding: allPadding(PaddingType.large),
                    child: Row(children: [
                      Expanded(
                        child: canDisplayFurigana
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CardFuriganaText(card.kana),
                                  CardJapaneseText(card.kanji)
                                ],
                              )
                            : CardJapaneseText(card.kana),
                        flex: 35,
                      ),
                      Expanded(
                        child: Padding(
                            padding: leftPadding(PaddingType.standard),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...sensesFormatted
                                    .map((sense) => CardSenseText(sense)),
                                if (card.note != null && card.note!.isNotEmpty)
                                  Padding(
                                    padding: topPadding(PaddingType.standard),
                                    child: Description(card.note!),
                                  )
                              ],
                            )),
                        flex: 65,
                      )
                    ])))));
  }
}
