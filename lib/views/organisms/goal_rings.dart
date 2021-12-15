import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/molecules/goal_rings_painter.dart';
import 'package:tuple/tuple.dart';

class GoalRings extends HookConsumerWidget {
  const GoalRings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userRepositoryProvider);

    final double dayProgress = user is InitializedUser
        ? user.stats.discoveredToday / user.goals.discoverDaily
        : 0;

    final double weekProgress = user is InitializedUser
        ? user.stats.discoveredWeek / user.goals.discoverWeekly
        : 0;

    final double monthProgress = user is InitializedUser
        ? user.stats.discoveredMonth / user.goals.discoverMonthly
        : 0;

    return CustomPaint(
      size: Size.infinite,
      painter: GoalRingsPainter(
          Theme.of(context).colorScheme.primaryVariant,
          [
            Tuple2(Colors.blue.shade400, monthProgress),
            Tuple2(Colors.pink.shade400, weekProgress),
            Tuple2(Colors.green.shade400, dayProgress)
          ],
          2),
    );
  }
}
