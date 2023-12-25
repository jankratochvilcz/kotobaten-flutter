import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/hooks/bootstrap_hook.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/desktop_card.dart';
import 'package:kotobaten/views/molecules/goals_card.dart';
import 'package:kotobaten/views/organisms/home/card_collect.dart';
import 'package:kotobaten/views/organisms/home/card_learn.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/search/universal_search.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

@RoutePage(name: 'HomeRoute')
class HomeView extends HookConsumerWidget {
  HomeView({Key? key}) : super(key: key);

  final _pullToRefeshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userService = ref.read(userServiceProvider);
    final practiceService = ref.read(practiceServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);

    goToPractice() async {
      await practiceService.initialize();
      await navigationService.goPractice(context);
    }

    final userModelInitialized = useInitializedUser(context, ref);

    if (userModelInitialized == null) {
      return const Loading();
    }

    if (userModelInitialized.userModel.refreshing) {
      _pullToRefeshController.refreshCompleted();
    }

    return Expanded(
        child: Padding(
            padding: allPadding(PaddingType.xLarge),
            child: MediaQuery.of(context).size.width >= minimumDesktopSize
                ? Expanded(
                    child: Stack(children: [
                    const Positioned(
                        top: 0,
                        right: 0,
                        child: SizedBox(width: 300, child: UniversalSearch())),
                    Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const DesktopCard(GoalsCard()),
                        DesktopCard(
                            CardLearn(userModelInitialized.user, goToPractice)),
                        const DesktopCard(CardCollect()),
                      ],
                    ))
                  ]))
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: bottomPadding(PaddingType.xxLarge),
                          child: CardLearn(
                              userModelInitialized.user, goToPractice)),
                      const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 48),
                          child: CardCollect()),
                      const GoalsCard()
                    ],
                  )));
  }
}
