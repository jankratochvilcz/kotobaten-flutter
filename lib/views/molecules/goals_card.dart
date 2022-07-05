import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/datetime.dart';
import 'package:kotobaten/models/slices/user/user_day_streak.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/streak_day_ring.dart';

class GoalsCard extends ConsumerWidget {
  const GoalsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);

    if (userModel is UserModelInitialized) {
      final stats = userModel.user.stats;
      final streaks = stats.streaks;
      final streaksLastWeek = streaks?.take(6) ?? [];
      final streaksLastWeekWithToday = [
        DayStreak.initialized(DateTime.now(), false),
        ...streaksLastWeek,
      ].reversed;

      final pastDayCircles = streaksLastWeekWithToday.map((x) => Padding(
          padding: allPadding(PaddingType.small),
          child: Column(children: [
            SizedBox(
                width: 32,
                height: 32,
                child: StreakDayRing(
                    backgroundColor,
                    x.date.isSameDate(DateTime.now())
                        ? userModel.user.stats.discoveredToday /
                            userModel.user.goals.discoverDaily
                        : x.hasStreak
                            ? 1
                            : 0,
                    x.date.isSameDate(DateTime.now()))),
            Text(
              formatDate(x.date, [D]),
              style: const TextStyle(color: Colors.black26),
            )
          ])));

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: pastDayCircles.toList(),
      );
    }

    return const Loading();
  }
}
