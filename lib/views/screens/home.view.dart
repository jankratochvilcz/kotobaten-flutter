import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/organisms/home/card_learn.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/screens/home.model.dart';
import 'package:kotobaten/views/screens/home.viewmodel.dart';

final _viewModelProvider = StateNotifierProvider<HomeViewModel, HomeModel>(
    (ref) => HomeViewModel(
        ref.watch(kotobatenApiServiceProvider),
        ref.watch(authenticationServiceProvider),
        ref.watch(userRepositoryProvider.notifier)));

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);
    final user = ref.watch(userRepositoryProvider);

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

    if (model is Initialized && user is InitializedUser) {
      return Scaffold(
          body: Center(
              child: Column(
        children: [
          Padding(
              child: const Image(
                  image: AssetImage('assets/logos/square_gray.png'), width: 80),
              padding: EdgeInsets.all(getPadding(PaddingType.largePlusPlus))),
          Padding(
              padding: bottomPadding(PaddingType.largePlus),
              child: CardLearn(user)),
          CardLearn(user)
        ],
      )));
    }

    return const Loading();
  }
}
