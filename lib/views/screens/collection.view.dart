import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/cards/cards_model.dart';
import 'package:kotobaten/models/slices/cards/cards_repository.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/views/molecules/word_card.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/word_add.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

class CollectionView extends HookConsumerWidget {
  const CollectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsService = ref.watch(cardsServiceProvider);
    final cardsModel = ref.watch(cardsRepositoryProvider);

    if (cardsModel is CardsModelInitial) {
      unawaited(Future.microtask(() => cardsService.initialize()));
    }

    if (cardsModel is CardsModelInitialized) {
      return ScaffoldDefault(
        ListView.builder(
            itemCount: cardsModel.cards.length + 1,
            itemBuilder: (context, index) {
              if (index == cardsModel.cards.length) {
                if (!cardsModel.loadingNextPage) {
                  Future.microtask(() => cardsService.loadMoreCards());
                }
                return Center(
                  child: Padding(
                      padding: allPadding(PaddingType.standard),
                      child: const CircularProgressIndicator()),
                );
              }

              return WordCard(cardsModel.cards[index], cardsService.deleteCard,
                  cardsService.editCard);
            }),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Add word',
            backgroundColor: Theme.of(context).colorScheme.primary,
            onPressed: () => showWordAddBottomSheet(context, (card) async {
                  if (card is CardNew) {
                    return await cardsService.createCard(card);
                  } else if (card is CardInitialized) {
                    return await cardsService.editCard(card);
                  }

                  throw UnsupportedError(
                      'Card needs to be either new or initialized');
                }),
            child: const Icon(Icons.move_to_inbox_outlined)),
      );
    }

    return const Loading();
  }
}
