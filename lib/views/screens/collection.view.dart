import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/extensions/datetime.dart';
import 'package:kotobaten/extensions/string.dart';
import 'package:kotobaten/hooks/bootstrap_hook.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/cards/cards_model.dart';
import 'package:kotobaten/models/slices/cards/cards_repository.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/word_add.dart';
import 'package:kotobaten/views/organisms/word_grid.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

class CollectionView extends HookConsumerWidget {
  final cardTypes = [
    {'title': 'All', 'value': null},
    {'title': 'Words only', 'value': "0"},
    {'title': 'Grammar only', 'value': "1"}
  ];

  CollectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsService = ref.watch(cardsServiceProvider);
    final cardsModel = ref.watch(cardsRepositoryProvider);
    final currentCardType = useState<String?>(null);

    final userModelInitialized = useInitializedUser(context, ref);

    if (userModelInitialized == null) {
      return const Loading();
    }

    if (cardsModel is CardsModelInitial) {
      unawaited(Future.microtask(() => cardsService.initialize()));
    }

    if (cardsModel is CardsModelInitialized) {
      final groups = groupBy<CardInitialized, DateTime>(cardsModel.cards,
          (x) => DateTime(x.created.year, x.created.month, x.created.day));

      return ScaffoldDefault(
        ListView.builder(
            itemCount: groups.length + 1,
            itemBuilder: (context, index) {
              if (index == groups.length) {
                if (!cardsModel.loadingNextPage && cardsModel.hasMoreCards) {
                  Future.microtask(() => cardsService.loadMoreCards());
                }

                if (cardsModel.loadingNextPage) {
                  return Center(
                    child: Padding(
                        padding: allPadding(PaddingType.standard),
                        child: const CircularProgressIndicator()),
                  );
                }
                return const Empty();
              }

              final isFirst = index == 0;
              final group = groups.entries.toList()[index];
              final date = group.key;
              final cards = group.value;

              var groupHeader = Align(
                  alignment: Alignment.center,
                  child: Heading(
                      date.getRelativeToNowString(DateTime.now()).capitalize(),
                      HeadingStyle.h2));
              var cardTypeDropdown = DropdownButton<String>(
                items: cardTypes.map((value) {
                  return DropdownMenuItem<String>(
                    value: value['value'],
                    child: Text(value['title'] as String),
                  );
                }).toList(),
                value: currentCardType.value,
                onChanged: (String? newValue) {
                  switch (newValue) {
                    case "0":
                      Future.microtask(
                          () => cardsService.initialize(type: CardType.word));
                      break;
                    case "1":
                      Future.microtask(() =>
                          cardsService.initialize(type: CardType.grammar));
                      break;
                    default:
                      Future.microtask(() => cardsService.initialize());
                  }

                  currentCardType.value = newValue;
                },
              );

              return Column(children: [
                Center(
                  child: Padding(
                    padding: allPadding(PaddingType.xLarge),
                    child: isDesktop(context)
                        ? Stack(
                            children: [
                              groupHeader,
                              if (isFirst)
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: cardTypeDropdown),
                            ],
                          )
                        : Column(
                            children: [
                              groupHeader,
                              if (isFirst)
                                Align(
                                    alignment: Alignment.center,
                                    child: cardTypeDropdown),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                  ),
                ),
                WordGrid(cards),
              ]);
            }),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Add word',
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
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
