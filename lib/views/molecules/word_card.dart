import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/card.dart' as card_model;
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';

const minimumCardHeight = 80.0;

class WordCard extends StatelessWidget {
  final card_model.CardInitialized card;
  final Future<bool> Function(card_model.CardInitialized card) onDelete;
  final Future<card_model.CardInitialized> Function(
      card_model.CardInitialized card) onEdit;

  const WordCard(this.card, this.onDelete, this.onEdit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final furigana =
        (card.kanji?.isNotEmpty ?? false) && (card.kana?.isNotEmpty ?? false)
            ? card.kana
            : null;
    final primaryJapanese =
        (card.kanji?.isNotEmpty ?? false) ? card.kanji : card.kana;

    return Card(
      child: Padding(
          padding: allPadding(PaddingType.standard),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: minimumCardHeight),
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
                                if (furigana != null)
                                  DescriptionRichText([
                                    TextSpan(
                                        text: furigana,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12))
                                  ]),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0, 0, 0, furigana != null ? 22 : 4),
                                    child: Text(
                                      primaryJapanese ?? '',
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    )),
                              ],
                            ))),
                    Expanded(
                        child: Heading(
                      card.sense,
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
                                        onTap: () {},
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
                                                      'Are you sure you want to delete "${card.sense}" from your collection?'),
                                                  actions: [
                                                    Button(
                                                      'Yes',
                                                      () async {
                                                        await onDelete(card);
                                                        Navigator.of(context)
                                                            .pop();
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      icon: Icons.check,
                                                    ),
                                                    Button(
                                                      'No',
                                                      () =>
                                                          Navigator.of(context)
                                                              .pop(),
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
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.black38,
                            size: 14,
                          ),
                        ))
                  ],
                )),
            if (card.note?.isNotEmpty ?? false)
              Padding(
                  padding: EdgeInsets.fromLTRB(getPadding(PaddingType.standard),
                      getPadding(PaddingType.standard), 0, 0),
                  child: Row(children: [
                    Padding(
                        padding: topPadding(PaddingType.extraSmall),
                        child: const Icon(
                          Icons.description_outlined,
                          size: 12,
                          color: Colors.black45,
                        )),
                    Padding(
                        padding: leftPadding(PaddingType.small),
                        child: Text(card.note ?? '',
                            softWrap: true,
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 12)))
                  ])),
          ])),
    );
  }
}
