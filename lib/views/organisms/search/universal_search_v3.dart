import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/organisms/search/search_results.dart';
import 'package:kotobaten/views/screens/search.model.dart';
import 'package:kotobaten/views/screens/search.viewmodel.dart';

class UniversalSearchV3 extends HookConsumerWidget {
  const UniversalSearchV3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(searchViewModelProvider.notifier);
    final model = ref.watch(searchViewModelProvider);

    var loadedCounter = "No results";
    if (model is SearchModelLoaded) {
      if (model.dictionaryCards.isNotEmpty && model.cards.isEmpty) {
        loadedCounter = "${model.dictionaryCards.length} dictionary results";
      }

      if (model.cards.isNotEmpty && model.dictionaryCards.isEmpty) {
        loadedCounter = "${model.cards.length} collection results";
      }

      if (model.cards.isNotEmpty && model.dictionaryCards.isNotEmpty) {
        loadedCounter =
            "${model.cards.length} collection + ${model.dictionaryCards.length} dictionary results";
      }
    }

    return Column(
      children: [
        Padding(
          padding: bottomPadding(PaddingType.standard),
          child: TextField(
            autofocus: true,
            controller: viewModel.searchTermController,
            decoration: InputDecoration(
              counter: viewModel is SearchModelLoading
                  ? SizedBox.fromSize(
                      size: const Size(12, 12),
                      child: const CircularProgressIndicator(strokeWidth: 1),
                    )
                  : (viewModel is SearchModelInitial
                      ? null
                      : Text(loadedCounter)),
              labelText: "Universal search",
              border: const UnderlineInputBorder(),
              suffixIcon: const Icon(Icons.search),
            ),
            onSubmitted: (value) {
              // Implement your search function here
            },
          ),
        ),
        Expanded(
            child: viewModel.searchTermController.text.isNotEmpty
                ? (model is SearchModelLoaded &&
                        (model.cards.isNotEmpty ||
                            model.dictionaryCards.isNotEmpty)
                    ? const SearchResults()
                    : Center(
                        child: Text(
                        "No results.",
                        style: TextStyle(color: getDescriptionColor(context)),
                      )))
                : Center(
                    child: Text(
                    "Search the dictionary and your collection, all at once.",
                    style: TextStyle(color: getDescriptionColor(context)),
                  )))
      ],
    );
  }
}
