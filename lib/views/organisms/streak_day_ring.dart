import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/views/molecules/goal_rings_painter.dart';
import 'package:tuple/tuple.dart';

class StreakDayRing extends HookConsumerWidget {
  final Color backgroundColor;
  final double strokeThickness;
  final double completionPercentage;
  final bool isToday;

  const StreakDayRing(
      this.backgroundColor, this.completionPercentage, this.isToday,
      {Key? key, this.strokeThickness = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double percentageToRender = !isToday
        ? completionPercentage
        : completionPercentage >= 1
            ? 1
            : 0;

    final ring = CustomPaint(
      size: Size.infinite,
      painter: GoalRingsPainter(
          backgroundColor,
          [
            Tuple2(
                !isToday
                    ? Colors.black12
                    : Theme.of(context).colorScheme.primary,
                percentageToRender),
          ],
          strokeThickness,
          fillOnFullProgress: false),
    );

    if (isToday) {
      return ring;
    }

    final icon = percentageToRender >= 1
        ? Icon(
            Icons.check,
            color: successColor,
          )
        : const Icon(Icons.remove, color: Colors.black12);

    return Stack(
      children: [ring, Center(child: icon)],
    );
  }
}
