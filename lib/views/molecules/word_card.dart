import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

const minimumCardHeight = 80.0;

class WordCard extends ConsumerWidget {
  final card_entity.CardInitialized card;

  const WordCard(this.card, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardService = ref.read(cardsServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);

    final furigana =
        (card.kanji?.isNotEmpty ?? false) && (card.kana?.isNotEmpty ?? false)
            ? card.kana
            : null;

    final furiganaClipped = furigana.ellipsis(20);
    final senseClipped = card.sense.ellipsis(40);
    final kanjiClipped = card.kanji.ellipsis(8);
    final kanaClipped = card.kana.ellipsis(20);

    final primaryJapanese =
        (kanjiClipped?.isNotEmpty ?? false) ? kanjiClipped : kanaClipped;

    final noteClipped = card.note != null && card.note!.length > 40
        ? card.note!.substring(0, 40) + '...'
        : card.note;

    var foregroundColor = getDescriptionColor(context);

    return Card(
      child: Padding(
          padding: allPadding(PaddingType.standard),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ConstrainedBox(
                constraints: const BoxConstraints(minHeight: minimumCardHeight),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: leftPadding(PaddingType.standard),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (card.type == CardType.word &&
                                    furiganaClipped != null)
                                  DescriptionRichText([
                                    TextSpan(
                                        text: furiganaClipped,
                                        style: TextStyle(
                                            color: foregroundColor,
                                            fontSize: 12))
                                  ]),
                                if (card.type == CardType.grammar)
                                  DescriptionRichText([
                                    TextSpan(
                                        text: "(grammar)",
                                        style: TextStyle(
                                            color: foregroundColor,
                                            fontSize: 12))
                                  ]),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0,
                                        furiganaClipped != null ? 22 : 4),
                                    child: Text(
                                      card.type == CardType.word
                                          ? primaryJapanese ?? ''
                                          : senseClipped,
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            ))),
                    Expanded(
                        child: Heading(
                      card.type == CardType.word
                          ? senseClipped
                          : kanjiClipped ?? '',
                      HeadingStyle.h3,
                      textAlign: TextAlign.left,
                    )),
                    Padding(
                        padding: leftPadding(PaddingType.standard),
                        child: TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          onPressed: () => showModalBottomSheet(
                              shape: defaultBottomSheetShape,
                              context: context,
                              builder: (_) => SizedBox(
                                  height: 120,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading:
                                            const Icon(Icons.edit_outlined),
                                        title: const Text('Edit word'),
                                        onTap: () => showWordAddBottomSheet(
                                            context, (word) async {
                                          final result = await cardService
                                              .editCard(word as card_entity
                                                  .CardInitialized);
                                          navigationService.goBack(context);

                                          return result;
                                        }, existingWord: card),
                                      ),
                                      ListTile(
                                        iconColor: Colors.red,
                                        textColor: Colors.red,
                                        leading:
                                            const Icon(Icons.delete_outline),
                                        title: const Text('Delete word'),
                                        onTap: () => showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  title:
                                                      const Text('Delete word'),
                                                  content: Text(
                                                      'Are you sure you want to delete "$senseClipped" from your collection?'),
                                                  actions: [
                                                    ButtonAsync(
                                                      'Yes',
                                                      () async {
                                                        await cardService
                                                            .deleteCard(card);
                                                        navigationService
                                                            .goBack(context);
                                                        navigationService
                                                            .goBack(context);
                                                      },
                                                      icon: Icons.check,
                                                    ),
                                                    Button(
                                                      'No',
                                                      () => navigationService
                                                          .goBack(context),
                                                      icon:
                                                          Icons.cancel_outlined,
                                                      type:
                                                          ButtonType.secondary,
                                                    ),
                                                  ],
                                                )),
                                      )
                                    ],
                                  ))),
                          child: Icon(
                            Icons.more_horiz,
                            color: foregroundColor,
                            size: 14,
                          ),
                        ))
                  ],
                )),
            if (noteClipped?.isNotEmpty ?? false)
              Padding(
                  padding: EdgeInsets.fromLTRB(getPadding(PaddingType.standard),
                      getPadding(PaddingType.standard), 0, 0),
                  child: Row(children: [
                    Padding(
                        padding: topPadding(PaddingType.xSmall),
                        child: Icon(
                          Icons.description_outlined,
                          size: 12,
                          color: foregroundColor,
                        )),
                    Expanded(
                        child: Padding(
                            padding: leftPadding(PaddingType.small),
                            child: Text(noteClipped ?? '',
                                softWrap: true,
                                style: TextStyle(
                                    color: foregroundColor, fontSize: 12))))
                  ])),
          ])),
    );
  }
}
