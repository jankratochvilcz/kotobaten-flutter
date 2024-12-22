import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/views/atoms/card/card_furigana_text.dart';
import 'package:kotobaten/views/atoms/card/card_sense_text.dart';
import 'package:kotobaten/views/atoms/card/card_japanese_text.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/molecules/tiny_progress_bar.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class WordCard extends ConsumerWidget {
  final card_entity.CardInitialized card;

  const WordCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardService = ref.read(cardsServiceProvider);
    final kanaRetentionEffective = card.kanaRetention ?? 0;
    final senseRetentionEffective = card.senseRetention ?? 0;
    final retentionEffective =
        card.kanaRetention == null || card.senseRetention == null
            ? null
            : (kanaRetentionEffective + senseRetentionEffective) / 2;

    final canDisplayFurigana = (card.kanji?.isNotEmpty ?? false);
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
                    child: Stack(children: [
                      Row(children: [
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
                                  CardSenseText(card.sense),
                                  if (hasNote)
                                    Padding(
                                      padding: topPadding(PaddingType.standard),
                                      child: Description(card.note!),
                                    )
                                ],
                              )),
                          flex: 65,
                        )
                      ]),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: TinyProgressBar(
                              progress:
                                  retentionEffective)), // Set your progress value here )
                    ])))));
  }
}
