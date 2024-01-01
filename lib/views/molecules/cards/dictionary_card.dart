import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/list.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/models/slices/dictionary/dictionary_card.dart';
import 'package:kotobaten/models/slices/navigation/overlays_service.dart';
import 'package:kotobaten/views/atoms/card/card_furigana_text.dart';
import 'package:kotobaten/views/atoms/card/card_sense_text.dart';
import 'package:kotobaten/views/atoms/card/card_japanese_text.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class DictionaryCard extends ConsumerWidget {
  final DictionaryCardInitialized card;

  const DictionaryCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overlayService = ref.read(overlaysServiceProvider);
    final cardsService = ref.read(cardsServiceProvider);

    final canDisplayFurigana = card.kanji.isNotEmpty;
    final sensesFormatted = card.senses.length > 1
        ? card.senses.map((sense) =>
            "${card.senses.indexOf(sense) + 1}. ${sense.reduceWithCommas()}")
        : [card.senses.first.reduceWithCommas()];

    var cardContents = Padding(
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
                    ...sensesFormatted.map((sense) => CardSenseText(sense)),
                    if (card.note != null && card.note!.isNotEmpty)
                      Padding(
                        padding: topPadding(PaddingType.standard),
                        child: Description(card.note!),
                      )
                  ],
                )),
            flex: 65,
          )
        ]));
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () {
              overlayService.showOverlay(
                  context,
                  (context) => Button("Add to collection", () {
                        Navigator.of(context).pop();
                        showWordAddBottomSheet(context, ref, (card) async {
                          if (card is card_entity.CardNew) {
                            return await cardsService.createCard(card);
                          }

                          throw UnsupportedError(
                              'Action only supported for new and initialized cards');
                        }, prefillFromDictionaryCard: card);
                      }));
            },
            child: Card(child: cardContents)));
  }
}
