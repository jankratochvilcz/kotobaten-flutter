import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/desktop_card.dart';
import 'package:kotobaten/views/molecules/goals_card.dart';
import 'package:kotobaten/views/organisms/home/card_collect.dart';
import 'package:kotobaten/views/organisms/home/card_learn.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeView extends HookConsumerWidget {
  HomeView({Key? key}) : super(key: key);

  final _pullToRefeshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authModel = ref.watch(authRepositoryProvider);
    final userModel = ref.watch(userRepositoryProvider);
    final authService = ref.read(authServiceProvider);
    final userService = ref.read(userServiceProvider);
    final practiceService = ref.read(practiceServiceProvider);
    final dailyReminderService = ref.read(dailyReminderServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);

    goToPractice() async {
      await practiceService.initialize();
      await navigationService.goPractice(context);
    }

    if (authModel is AuthModelInitial) {
      Future.microtask(() async {
        final result = await authService.initialize();
        if (result is AuthModelUnauthenticated) {
          await navigationService.goLogin(context);
        }
      });
    }

    if (authModel is AuthModelAuthenticated && userModel is UserModelInitial) {
      Future.microtask(() => userService.refreshUser());
      Future.microtask(() async {
        await dailyReminderService.ensureInitialized();
      });
    }

    if (userModel is UserModelInitialized) {
      if (userModel.refreshing) {
        _pullToRefeshController.refreshCompleted();
      }

      return ScaffoldDefault(SmartRefresher(
          enablePullDown: true,
          controller: _pullToRefeshController,
          onRefresh: () => userService.refreshUser(),
          header: WaterDropMaterialHeader(
            color: Colors.white,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Center(
              child: CallbackShortcuts(
                  bindings: {
                LogicalKeySet(LogicalKeyboardKey.enter): goToPractice
              },
                  child: Focus(
                      autofocus: true,
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: verticalPadding(PaddingType.xLarge),
                              child: MediaQuery.of(context).size.width >=
                                      minimumDesktopSize
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const DesktopCard(GoalsCard()),
                                        DesktopCard(CardLearn(
                                            userModel.user, goToPractice)),
                                        const DesktopCard(CardCollect()),
                                      ],
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: bottomPadding(
                                                PaddingType.xxLarge),
                                            child: CardLearn(
                                                userModel.user, goToPractice)),
                                        const Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 48),
                                            child: CardCollect()),
                                        const GoalsCard()
                                      ],
                                    ))))))));
    }

    return const Loading();
  }
}
