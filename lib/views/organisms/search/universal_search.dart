import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/organisms/search/search_results.dart';
import 'package:kotobaten/views/screens/search.viewmodel.dart';

class UniversalSearch extends HookConsumerWidget {
  final bool forceOpenView;
  final VoidCallback? onClosed;

  const UniversalSearch({super.key, this.forceOpenView = false, this.onClosed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarKey = GlobalKey();
    final searchViewModel = ref.read(searchViewModelProvider.notifier);

    // There is a lot of state trackign to support the force open/close of the view
    // The search bar doesn't indicate when it is cancelled, so we need to rely on specific events
    // to update the state manually.
    final isForceOpened = useState(false);
    final isReadyForForceOpen = useState(false);
    final isReadyDetector =
        useState(Timer.periodic(const Duration(milliseconds: 56), (timer) {
      if (searchBarKey.currentWidget != null) {
        isReadyForForceOpen.value = true;
      }
    }));
    final previousIsOpenValue = useState(false);

    useEffect(() {
      openFunc() async {
        await Future.microtask(() {
          isForceOpened.value = true;
          searchViewModel.searchController.openView();
          previousIsOpenValue.value = true;
          isReadyDetector.value.cancel();
        });
      }

      if (forceOpenView && isReadyForForceOpen.value && !isForceOpened.value) {
        openFunc();
      }
      return null;
    }, [forceOpenView, isReadyForForceOpen.value, isForceOpened.value]);

    return SearchAnchor(
      searchController: searchViewModel.searchController,
      dividerColor: getDescriptionColorSubtle(context),
      viewBackgroundColor: Theme.of(context).colorScheme.background,
      viewSurfaceTintColor: Theme.of(context).colorScheme.background,
      builder: (context, controller) {
        if (!controller.isOpen && previousIsOpenValue.value && forceOpenView) {
          final currentOnClosed = onClosed;
          if (currentOnClosed != null) {
            currentOnClosed();
          }

          previousIsOpenValue.value = false;
          isForceOpened.value = false;
          return const Empty();
        }

        return SearchBar(
            key: searchBarKey,
            hintText: !forceOpenView ? "Collection & dictionary search" : null,
            textStyle: MaterialStatePropertyAll(TextStyle(
                fontSize: 14, color: getDescriptionColorSubtle(context))),
            onTap: () {
              if (!controller.isOpen) controller.openView();
            },
            onChanged: (_) {
              if (!controller.isOpen) controller.openView();
            },
            controller: searchViewModel.searchController,
            elevation: const MaterialStatePropertyAll(1),
            leading: Icon(
              Icons.search,
              color: getDescriptionColorSubtle(context),
            ));
      },
      suggestionsBuilder: (context, controller) {
        return [const SearchResults()];
      },
      isFullScreen: true,
      viewBuilder: (widgets) => widgets.first,
    );
  }
}
