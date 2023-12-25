import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      resultWidgets = searchModel.cards.map((card) => WordCard(
            card,
            disableEditOptions: true,
          ));
    } else {
      resultWidgets = [];
    }

    // wrap your widgets in Future.value if you need a Future
    return ListView.builder(
      itemBuilder: (context, index) {
        return resultWidgets.toList()[index];
      },
      itemCount: resultWidgets.length,
    );
  }
}
