import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/molecules/progress_infobox.dart';
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
    final navigationSerice = ref.read(navigationServiceProvider);

    if (authModel is AuthModelInitial) {
      unawaited(Future.microtask(() => authService.initialize()));
    }

    if (authModel is AuthModelUnauthenticated) {
      Future.microtask(() async {
        await navigationSerice.goLogin(context);
      });
    }

    if (authModel is AuthModelAuthenticated &&
        userModel is UserModelInitialized) {
      return Padding(
          padding: horizontalPadding(PaddingType.standard),
          child: SizedBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Heading(
                              userModel.user.user.email, HeadingStyle.h3)),
                      IconButton(
                          color: Colors.black26,
                          onPressed: () async =>
                              await navigationSerice.goSettings(context),
                          icon: const Icon(Icons.settings_outlined)),
                      ButtonAsync(
                        'Log out',
                        authService.logout,
                        color: Colors.black26,
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
                                      userModel.user.goals,
                                      navigationSerice.goBack(context)),
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
                  )
                ],
              )));
    }

    return const Loading();
  }
}
