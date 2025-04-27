import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/hooks/bootstrap_hook.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/search/universal_search_v3.dart';

const cardBaseHeight = 74.0;

@RoutePage(name: 'SearchRoute')
class SearchView extends HookConsumerWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModelInitialized = useInitializedUser(context, ref);

    if (userModelInitialized == null) {
      return const Loading();
    }
    return Padding(
        padding: allPadding(PaddingType.xLarge),
        child: const UniversalSearchV3());
  }
}
