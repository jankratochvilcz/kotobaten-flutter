import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/organisms/home/card_collect.dart';
import 'package:kotobaten/views/organisms/home/card_learn.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/screens/home.model.dart';
import 'package:kotobaten/views/screens/home.viewmodel.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final _viewModelProvider = StateNotifierProvider<HomeViewModel, HomeModel>(
    (ref) => HomeViewModel(
        ref.watch(kotobatenApiServiceProvider),
        ref.watch(authenticationServiceProvider),
        ref.watch(userRepositoryProvider.notifier)));

class HomeView extends HookConsumerWidget {
  HomeView({Key? key}) : super(key: key);

  final _pullToRefeshController = RefreshController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);
    final user = ref.watch(userRepositoryProvider);

    goToPractice() => Navigator.pushNamed(context, practiceRoute);

    if (model is Initial ||
        (model is AwaitingLogin && user is InitializedUser)) {
      Future.microtask(() => viewModel.initialize());
    }

    if (model is RequiresLogin) {
      Future.microtask(() {
        viewModel.redirectedToLogin();
        Navigator.pushNamedAndRemoveUntil(
            context, loginRoute, (route) => false);
      });
    }

    if (model is! Initializing) {
      _pullToRefeshController.refreshCompleted();
    }

    if (user is InitializedUser) {
      return ScaffoldDefault(SmartRefresher(
          enablePullDown: true,
          controller: _pullToRefeshController,
          onRefresh: () => viewModel.initialize(),
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
                              child: CardLearn(user, goToPractice)),
                          CardCollect(user, viewModel.createCard)
                        ],
                      ))))));
    }

    return const Loading();
  }
}
