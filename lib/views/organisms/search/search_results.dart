import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/cards/chooser_card.dart';
import 'package:kotobaten/views/molecules/cards/dictionary_card.dart';
import 'package:kotobaten/views/organisms/search/search.viewmodel.dart';

class SearchResults extends HookConsumerWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Needs to be here so that the component gets updates.
    // ignore: unused_local_variable
    final searchModel = ref.watch(searchViewModelProvider);
    final searchViewModel = ref.read(searchViewModelProvider.notifier);

    final searchResultsToShow = searchViewModel.getSearchResultsToShow();

    Iterable<Widget> collectionResultWidgets;
    Iterable<Widget> dictionaryResultWidgets;

    if (searchResultsToShow != null) {
      collectionResultWidgets = searchResultsToShow.cards.map((card) => Padding(
          padding: verticalPadding(PaddingType.small),
          child: Center(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: ChooserCard(
                    card,
                  )))));

      dictionaryResultWidgets =
          searchResultsToShow.dictionaryCards.map((card) => Padding(
              padding: verticalPadding(PaddingType.small),
              child: Center(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: DictionaryCard(
                        card,
                      )))));
    } else {
      collectionResultWidgets = [];
      dictionaryResultWidgets = [];
    }

    // wrap your widgets in Future.value if you need a Future
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: topPadding(PaddingType.large),
            child: Column(
              children: [
                if (collectionResultWidgets.isNotEmpty)
                  Padding(
                    padding: verticalPadding(PaddingType.xLarge),
                    child: Heading(
                        "Collection (${collectionResultWidgets.length})",
                        HeadingStyle.h2),
                  ),
                ...collectionResultWidgets,
                if (dictionaryResultWidgets.isNotEmpty)
                  Padding(
                    padding: verticalPadding(PaddingType.xLarge),
                    child: Heading(
                        "Dictionary (${dictionaryResultWidgets.length})",
                        HeadingStyle.h2),
                  ),
                ...dictionaryResultWidgets
              ],
            )));
  }
}
