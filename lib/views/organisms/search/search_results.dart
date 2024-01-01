import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/cards/chooser_card.dart';
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
      collectionResultWidgets = searchModel.cards.map((card) => Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: ChooserCard(
                card,
              ))));
    } else {
      collectionResultWidgets = [];
    }

    // wrap your widgets in Future.value if you need a Future
    return Padding(
        padding: topPadding(PaddingType.large),
        child: Column(
          children: [
            if (collectionResultWidgets.isNotEmpty)
              Padding(
                padding: verticalPadding(PaddingType.standard),
                child: Heading("Collection (${collectionResultWidgets.length})",
                    HeadingStyle.h2),
              ),
            ...collectionResultWidgets,
            // Padding(
            //   padding: verticalPadding(PaddingType.standard),
            //   child: const Heading("Dictionary", HeadingStyle.h2),
            // )
          ],
        ));
  }
}
