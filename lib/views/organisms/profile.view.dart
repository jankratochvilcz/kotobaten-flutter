import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/extensions/user.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/progress_infobox.dart';
import 'package:kotobaten/views/organisms/consistency_bar.dart';
import 'package:kotobaten/views/organisms/goal_rings.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/profile.model.dart';
import 'package:kotobaten/views/organisms/profile.viewmodel.dart';

final _viewModelProvider =
    StateNotifierProvider<ProfileViewModel, ProfileModel>((ref) =>
        ProfileViewModel(
            const ProfileModel.initial(),
            ref.watch(authenticationServiceProvider),
            ref.watch(userRepositoryProvider.notifier)));

showProfileBottomSheet(BuildContext context) => showModalBottomSheet(
    context: context,
    shape: defaultBottomSheetShape,
    builder: (context) => const ProfileView());

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
      final normalizedConsistency = model.user.getNormalizedConsistency();

      return Padding(
          padding: horizontalPadding(PaddingType.standard),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Heading(model.user.user.email, HeadingStyle.h3)),
                  Button(
                    'Log out',
                    viewModel.logOut,
                    icon: Icons.logout,
                  )
                ],
              ),
              Padding(
                  padding: verticalPadding(PaddingType.standard),
                  child: const Heading('Goals', HeadingStyle.h2)),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    width: 80,
                    height: 80,
                    child: GoalRings(
                      Theme.of(context).scaffoldBackgroundColor,
                      strokeThickness: 6,
                    ),
                  )),
                  ProgressInfobox(
                      'Today',
                      dailyProgressColor(context),
                      model.user.goals.discoverDaily,
                      model.user.stats.discoveredToday),
                  ProgressInfobox(
                      'Week',
                      weeklyProgressColor(context),
                      model.user.goals.discoverWeekly,
                      model.user.stats.discoveredWeek),
                  ProgressInfobox(
                      'Month',
                      monthlyProgressColor(context),
                      model.user.goals.discoverMonthly,
                      model.user.stats.discoveredMonth),
                ],
              ),
              Padding(
                  padding: topPadding(PaddingType.xLarge),
                  child: const Heading('Consistency', HeadingStyle.h2)),
              Padding(
                  padding: allPadding(PaddingType.large),
                  child: const Heading(
                    'Practice every day to keep your active recollection optimal.',
                    HeadingStyle.h3,
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: allPadding(PaddingType.large),
                  child: ConsistencyBar(normalizedConsistency)),
              ProgressInfobox(null, successColor, 100,
                  (normalizedConsistency * 100).toInt()),
            ],
          ));
    }

    return const Loading();
  }
}
