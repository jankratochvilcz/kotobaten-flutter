import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/screens/profile.model.dart';
import 'package:kotobaten/views/screens/profile.viewmodel.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

final _viewModelProvider =
    StateNotifierProvider<ProfileViewModel, ProfileModel>((ref) =>
        ProfileViewModel(
            const ProfileModel.initial(),
            ref.watch(authenticationServiceProvider),
            ref.watch(userRepositoryProvider.notifier)));

class ProfileView extends HookConsumerWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    if (model is Initial) {
      unawaited(Future.microtask(() => viewModel.initialize()));
    }

    if (model is NotLoggedIn) {
      Future.microtask(() async {
        await Navigator.pushNamedAndRemoveUntil(
            context, loginRoute, (route) => false);
        viewModel.reset();
      });
    }

    if (model is Initialized) {
      return ScaffoldDefault(Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(model.user.user.email),
          Padding(
              padding: topPadding(PaddingType.standard),
              child: Button(
                'Log out',
                viewModel.logOut,
                icon: Icons.logout,
              ))
        ],
      )));
    }

    return const Loading();
  }
}
