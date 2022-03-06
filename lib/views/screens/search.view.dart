import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/molecules/word_card.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/screens/search.model.dart';
import 'package:kotobaten/views/screens/search.viewmodel.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(searchViewModelProvider.notifier);
    final model = ref.watch(searchViewModelProvider);

    return VisibilityDetector(
        key: const Key('search.view'),
        onVisibilityChanged: (visibilityInfo) {
          if (visibilityInfo.visibleFraction >= 1) {
            viewModel.focusSearch();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            foregroundColor: Colors.white,
            title: model.searchFocused
                ? TextField(
                    controller: viewModel.searchTermController,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    focusNode: viewModel.searchTermFocusNode,
                    decoration: const InputDecoration(border: InputBorder.none),
                    autofocus: true,
                  )
                : TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        minimumSize: const Size(200, 0)),
                    child: Text(
                      viewModel.searchTermController.text.isNotEmpty
                          ? viewModel.searchTermController.text
                          : 'Tap here to start searching.',
                      style:
                          const TextStyle(color: Colors.white38, fontSize: 16),
                    ),
                    onPressed: () => viewModel.focusSearch(),
                  ),
          ),
          body: model is SearchModelLoaded
              ? ListView(
                  children: model.cards.map((card) => WordCard(card)).toList(),
                )
              : model is SearchModelLoading
                  ? const Loading()
                  : const Center(
                      child: Description('Start typing to search...'),
                    ),
        ));
  }
}
