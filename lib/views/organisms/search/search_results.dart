import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/molecules/word_card.dart';
import 'package:kotobaten/views/screens/search.model.dart';
import 'package:kotobaten/views/screens/search.viewmodel.dart';

class SearchResults extends HookConsumerWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchModel = ref.watch(searchViewModelProvider);
    Iterable<Widget> resultWidgets;

    if (searchModel is SearchModelLoaded) {
      resultWidgets = searchModel.cards.map((card) => Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: WordCard(
                card,
                disableEditOptions: true,
              ))));
    } else {
      resultWidgets = [];
    }

    // wrap your widgets in Future.value if you need a Future
    return Padding(
        padding: topPadding(PaddingType.large),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return resultWidgets.toList()[index];
          },
          itemCount: resultWidgets.length,
        ));
  }
}
