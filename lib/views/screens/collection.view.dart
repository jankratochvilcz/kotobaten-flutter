import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/screens/collection.model.dart';
import 'package:kotobaten/views/screens/collection.viewmodel.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

final _viewModelProvider =
    StateNotifierProvider<CollectionViewModel, CollectionModel>(
        (ref) => CollectionViewModel(
              const CollectionModel.initial(),
              ref.watch(kotobatenApiServiceProvider),
            ));

const minimumCardHeight = 80.0;

class CollectionView extends HookConsumerWidget {
  const CollectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    if (model is CollectionModelInitial) {
      unawaited(Future.microtask(() => viewModel.initialize()));
    }

    if (model is CollectionModelInitialized) {
      return ScaffoldDefault(ListView.builder(
          itemCount: model.cards.length + 1,
          itemBuilder: (context, index) {
            if (index == model.cards.length) {
              if (!model.loadingNextPage) {
                Future.microtask(() => viewModel.loadMoreCards());
              }
              return Center(
                child: Padding(
                    padding: allPadding(PaddingType.standard),
                    child: const CircularProgressIndicator()),
              );
            }

            final card = model.cards[index];
            final furigana = (card.kanji?.isNotEmpty ?? false) &&
                    (card.kana?.isNotEmpty ?? false)
                ? card.kana
                : null;
            final primaryJapanese =
                (card.kanji?.isNotEmpty ?? false) ? card.kanji : card.kana;

            return Card(
              child: Padding(
                  padding: allPadding(PaddingType.standard),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ConstrainedBox(
                            constraints: const BoxConstraints(
                                maxHeight: minimumCardHeight),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding:
                                            leftPadding(PaddingType.standard),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                    0,
                                                    0,
                                                    0,
                                                    furigana != null ? 22 : 4),
                                                child: Text(
                                                  primaryJapanese ?? '',
                                                  style: const TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.w500),
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
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () => showModalBottomSheet(
                                          shape: defaultBottomSheetShape,
                                          context: context,
                                          builder: (_) => SizedBox(
                                              height: 120,
                                              child: Column(
                                                children: [
                                                  ListTile(
                                                    leading: const Icon(
                                                        Icons.edit_outlined),
                                                    title:
                                                        const Text('Edit word'),
                                                    onTap: () {},
                                                  ),
                                                  ListTile(
                                                    iconColor: Colors.red,
                                                    textColor: Colors.red,
                                                    leading: const Icon(
                                                        Icons.delete_outline),
                                                    title: const Text(
                                                        'Delete word'),
                                                    onTap: () {},
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
                              padding: EdgeInsets.fromLTRB(
                                  getPadding(PaddingType.standard),
                                  getPadding(PaddingType.standard),
                                  0,
                                  0),
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
                                            color: Colors.black54,
                                            fontSize: 12)))
                              ])),
                      ])),
            );
          }));
    }

    return const Loading();
  }
}
