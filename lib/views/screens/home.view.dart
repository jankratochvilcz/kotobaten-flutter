import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
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
    final authService = ref.watch(authServiceProvider);
    final userService = ref.watch(userServiceProvider);

    goToPractice() => Navigator.pushNamed(context, practiceRoute);

    if (authModel is AuthModelInitial) {
      Future.microtask(() async {
        final result = await authService.initialize();
        if (result is AuthModelUnauthenticated) {
          await Navigator.pushNamedAndRemoveUntil(
              context, loginRoute, (route) => false);
        }
      });
    }

    if (authModel is AuthModelAuthenticated && userModel is UserModelInitial) {
      Future.microtask(() => userService.refreshUser());
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
            backgroundColor: Theme.of(context).colorScheme.primaryVariant,
          ),
          child: Center(
              child: CallbackShortcuts(
                  bindings: {
                LogicalKeySet(LogicalKeyboardKey.enter): goToPractice
              },
                  child: Focus(
                      autofocus: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: bottomPadding(PaddingType.xxLarge),
                              child: CardLearn(
                                  userModel.user,
                                  goToPractice,
                                  () => userService.refreshUser(
                                      updateRetentionBackstop: true))),
                          const CardCollect()
                        ],
                      ))))));
    }

    return const Loading();
  }
}
