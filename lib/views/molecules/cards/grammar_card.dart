import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/views/atoms/card/card_sense_text.dart';
import 'package:kotobaten/views/atoms/card/card_japanese_text.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class GrammarCard extends ConsumerWidget {
  final card_entity.CardInitialized card;

  const GrammarCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardService = ref.read(cardsServiceProvider);

    final hasNote = card.note != null && card.note!.isNotEmpty;

    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
            onTap: () => showWordAddBottomSheet(context, ref, (card) async {
                  final result = await cardService
                      .editCard(card as card_entity.CardInitialized);
                  return result;
                }, existingWord: card),
            child: Card(
                child: Padding(
                    padding: allPadding(PaddingType.large),
                    child: Row(children: [
                      Expanded(
                        child: CardJapaneseText(
                          card.sense,
                          color: secondaryColor,
                          maxLength: 120,
                        ),
                        flex: 35,
                      ),
                      Expanded(
                        child: Padding(
                            padding: leftPadding(PaddingType.standard),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CardSenseText(card.kanji),
                                if (hasNote)
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
