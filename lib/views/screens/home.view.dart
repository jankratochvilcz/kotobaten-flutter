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
      viewModel.initialize();
    }

    if (model is RequiresLogin) {
      viewModel.reset();
      Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
          context, loginRoute, (route) => false));
    }

    return const Scaffold(body: Center(child: Text('Hello')));
  }
}
