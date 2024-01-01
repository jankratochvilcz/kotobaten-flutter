import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/cards/chooser_card.dart';
import 'package:kotobaten/views/molecules/cards/dictionary_card.dart';
import 'package:kotobaten/views/screens/search.model.dart';
import 'package:kotobaten/views/screens/search.viewmodel.dart';

class SearchResults extends HookConsumerWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchModel = ref.watch(searchViewModelProvider);
    Iterable<Widget> collectionResultWidgets;
    Iterable<Widget> dictionaryResultWidgets;

    if (searchModel is SearchModelLoaded) {
      collectionResultWidgets = searchModel.cards.map((card) => Padding(
          padding: verticalPadding(PaddingType.small),
          child: Center(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: ChooserCard(
                    card,
                  )))));

      dictionaryResultWidgets =
          searchModel.dictionaryCards.map((card) => Padding(
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
