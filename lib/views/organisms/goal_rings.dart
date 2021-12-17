import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/views/molecules/goal_rings_painter.dart';
import 'package:kotobaten/extensions/user.dart';
import 'package:tuple/tuple.dart';

class GoalRings extends HookConsumerWidget {
  final Color backgroundColor;
  final double strokeThickness;

  const GoalRings(this.backgroundColor, {Key? key, this.strokeThickness = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userRepositoryProvider);
    final progress = user is UserModelInitialized
        ? user.user.getGoalsProgress()
        : UserGoalsProgress.empty();

    return CustomPaint(
      size: Size.infinite,
      painter: GoalRingsPainter(
          backgroundColor,
          [
            Tuple2(monthlyProgressColor(context), progress.monthlyProgress),
            Tuple2(weeklyProgressColor(context), progress.weeklyProgress),
            Tuple2(dailyProgressColor(context), progress.dailyProgress)
          ],
          strokeThickness),
    );
  }
}
