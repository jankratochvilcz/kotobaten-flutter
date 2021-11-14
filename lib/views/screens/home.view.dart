import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/screens/home.model.dart';
import 'package:kotobaten/views/screens/home.viewmodel.dart';

final _viewModelProvider = StateNotifierProvider<HomeViewModel, HomeModel>(
    (ref) => HomeViewModel(ref.watch(kotobatenApiServiceProvider),
        ref.watch(authenticationServiceProvider)));

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    if (model is Initial) {
      Future.microtask(() => viewModel.initialize());
    }

    if (model is RequiresLogin) {
      Future.microtask(() => viewModel.reset());
      Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
          context, loginRoute, (route) => false));
    }

    return Scaffold(
        body: Center(
            child: model.when(
                initial: () => const CircularProgressIndicator(),
                initializing: () => const CircularProgressIndicator(),
                requiresLogin: () => const CircularProgressIndicator(),
                initialized: (user) =>
                    Text(user.stats.leftToPractice.toString()),
                initializationError: (error) => Text(error))));
  }
}
