import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/views/organisms/search/search_results.dart';
import 'package:kotobaten/views/organisms/search/search.model.dart';
import 'package:kotobaten/views/organisms/search/search.viewmodel.dart';

class UniversalSearchV3 extends HookConsumerWidget {
  const UniversalSearchV3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(searchViewModelProvider.notifier);

    // I need to register for this to get the re-renders on model update
    // ignore: unused_local_variable
    final model = ref.watch(searchViewModelProvider);

    var resultsToShow = viewModel.getSearchResultsToShow();
    var canShowResults = resultsToShow != null &&
        (resultsToShow.cards.isNotEmpty ||
            resultsToShow.dictionaryCards.isNotEmpty);

    return Column(
      children: [
        Padding(
          padding: bottomPadding(PaddingType.standard),
          child: TextField(
            autofocus: true,
            controller: viewModel.searchTermController,
            decoration: InputDecoration(
              hintText: "E.g., \"cheerful\"",
              hintStyle: TextStyle(
                  color: getDescriptionColorSubtle(context),
                  fontSize: textSizeSmall),
              counter: model is SearchModelLoading
                  ? Padding(
                      padding: topPadding(PaddingType.xSmall),
                      child: const SizedBox(
                        height: 16,
                        width: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    )
                  : Text(viewModel.getCounterText()),
              border: const OutlineInputBorder(),
            ),
            onSubmitted: (value) {
              // Implement your search function here
            },
          ),
        ),
        Expanded(
            child: viewModel.searchTermController.text.isNotEmpty
                ? (canShowResults
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
