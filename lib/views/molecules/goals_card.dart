import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/molecules/progress_infobox.dart';
import 'package:kotobaten/views/organisms/goal_rings.dart';
import 'package:kotobaten/views/organisms/goals_edit.dart';
import 'package:kotobaten/views/organisms/loading.dart';

class _GoalRingsInCard extends StatelessWidget {
  const _GoalRingsInCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 80,
        height: 80,
        child: GoalRings(
          Theme.of(context).scaffoldBackgroundColor,
          strokeThickness: 6,
        ),
      );
}

class _ProgressInfoboxDay extends StatelessWidget {
  final UserModelInitialized userModel;

  const _ProgressInfoboxDay(this.userModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProgressInfobox(
      'Today',
      dailyProgressColor(context),
      userModel.user.goals.discoverDaily,
      userModel.user.stats.discoveredToday);
}

class _ProgressInfoboxWeek extends StatelessWidget {
  final UserModelInitialized userModel;

  const _ProgressInfoboxWeek(this.userModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProgressInfobox(
      'Week',
      weeklyProgressColor(context),
      userModel.user.goals.discoverWeekly,
      userModel.user.stats.discoveredWeek);
}

class _ProgressInfoboxMonth extends StatelessWidget {
  final UserModelInitialized userModel;

  const _ProgressInfoboxMonth(this.userModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ProgressInfobox(
      'Month',
      monthlyProgressColor(context),
      userModel.user.goals.discoverMonthly,
      userModel.user.stats.discoveredMonth);
}

class _GoalsEditButton extends HookConsumerWidget {
  final UserModelInitialized userModel;

  const _GoalsEditButton(this.userModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userService = ref.read(userServiceProvider);

    return IconButton(
        onPressed: () => showGoalsEditDialog(
            context, userService.updateGoals, userModel.user.goals),
        color: Colors.black26,
        icon: const Icon(Icons.edit_outlined));
  }
}

class GoalsCard extends ConsumerWidget {
  const GoalsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);

    if (userModel is UserModelInitialized) {
      return Headed(
          MediaQuery.of(context).size.width > 400
              ? Padding(
                  padding: topPadding(PaddingType.standard),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: rightPadding(PaddingType.large),
                          child: const _GoalRingsInCard()),
                      _ProgressInfoboxDay(userModel),
                      _ProgressInfoboxWeek(userModel),
                      _ProgressInfoboxMonth(userModel)
                    ],
                  ))
              : Padding(
                  padding: topPadding(PaddingType.standard),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: bottomPadding(PaddingType.large),
                          child: const _GoalRingsInCard()),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _ProgressInfoboxDay(userModel),
                          _ProgressInfoboxWeek(userModel),
                          _ProgressInfoboxMonth(userModel)
                        ],
                      ),
                    ],
                  )),
          "Progress",
          HeadingStyle.h1);
    }

    return const Loading();
  }
}
