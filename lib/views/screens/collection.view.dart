import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/molecules/word_card.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/word_add.dart';
import 'package:kotobaten/views/screens/collection.model.dart';
import 'package:kotobaten/views/screens/collection.viewmodel.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

final _viewModelProvider =
    StateNotifierProvider<CollectionViewModel, CollectionModel>(
        (ref) => CollectionViewModel(
              const CollectionModel.initial(),
              ref.watch(kotobatenApiServiceProvider),
            ));

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
      return ScaffoldDefault(
        ListView.builder(
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

              return WordCard(
                  model.cards[index], viewModel.deleteCard, viewModel.editCard);
            }),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Add word',
            backgroundColor: Theme.of(context).colorScheme.primary,
            onPressed: () =>
                showWordAddBottomSheet(context, viewModel.createCard),
            child: const Icon(Icons.move_to_inbox_outlined)),
      );
    }

    return const Loading();
  }
}
