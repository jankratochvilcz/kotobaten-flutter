import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/extensions/user.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/progress_infobox.dart';
import 'package:kotobaten/views/organisms/consistency_bar.dart';
import 'package:kotobaten/views/organisms/goal_rings.dart';
import 'package:kotobaten/views/organisms/goals_edit.dart';
import 'package:kotobaten/views/organisms/loading.dart';

showProfileBottomSheet(BuildContext context) => showModalBottomSheet(
    context: context,
    shape: defaultBottomSheetShape,
    builder: (context) => const ProfileView());

class ProfileView extends HookConsumerWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.read(authServiceProvider);
    final userService = ref.read(userServiceProvider);
    final authModel = ref.watch(authRepositoryProvider);
    final userModel = ref.watch(userRepositoryProvider);

    if (authModel is AuthModelInitial) {
      unawaited(Future.microtask(() => authService.initialize()));
    }

    if (authModel is AuthModelUnauthenticated) {
      Future.microtask(() async {
        await Navigator.pushNamedAndRemoveUntil(
            context, loginRoute, (route) => false);
      });
    }

    if (authModel is AuthModelAuthenticated &&
        userModel is UserModelInitialized) {
      final normalizedConsistency = userModel.user.getNormalizedConsistency();

      return Padding(
          padding: horizontalPadding(PaddingType.standard),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                      child:
                          Heading(userModel.user.user.email, HeadingStyle.h3)),
                  Button(
                    'Log out',
                    authService.logout,
                    icon: Icons.logout,
                  )
                ],
              ),
              Padding(
                  padding: bottomPadding(PaddingType.xLarge),
                  child: Stack(
                    children: [
                      const Positioned.fill(
                          child: Align(
                              alignment: Alignment.center,
                              child: Heading(
                                'Goals',
                                HeadingStyle.h2,
                                noPadding: true,
                              ))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () => showGoalsEditDialog(
                                  context,
                                  userService.updateGoals,
                                  userModel.user.goals),
                              color: Colors.black26,
                              icon: const Icon(Icons.edit_outlined)))
                    ],
                  )),
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
                      userModel.user.goals.discoverDaily,
                      userModel.user.stats.discoveredToday),
                  ProgressInfobox(
                      'Week',
                      weeklyProgressColor(context),
                      userModel.user.goals.discoverWeekly,
                      userModel.user.stats.discoveredWeek),
                  ProgressInfobox(
                      'Month',
                      monthlyProgressColor(context),
                      userModel.user.goals.discoverMonthly,
                      userModel.user.stats.discoveredMonth),
                ],
              ),
              Padding(
                  padding: topPadding(PaddingType.xLarge),
                  child: const Heading(
                    'Consistency',
                    HeadingStyle.h2,
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: allPadding(PaddingType.large),
                  child: const Description(
                    'Practice every day to keep your active recollection optimal.',
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
