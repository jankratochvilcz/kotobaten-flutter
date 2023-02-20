import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/extensions/datetime.dart';

import '../../models/slices/user/user_statistics_day.dart';

const solidBorderSide =
    BorderSide(width: 1, style: BorderStyle.solid, color: Colors.black12);

class ChartProgress extends ConsumerWidget {
  final List<UserStatisticsDayInitialized> stats;

  const ChartProgress(this.stats, {super.key});

  LineChartData getDataForChart(BuildContext context) {
    final chartSpots = stats.reversed.take(22).map((stat) {
      final daysDiff = stat.date.difference(DateTime.now()).inDays;

      return FlSpot(daysDiff.toDouble(), stat.cardsDiscovered.toDouble());
    }).toList();

    return LineChartData(
        gridData: FlGridData(show: false),
        lineTouchData: LineTouchData(
            enabled: true,
            getTouchedSpotIndicator: (barData, spotIndexes) => spotIndexes
                .map((e) => TouchedSpotIndicatorData(
                    FlLine(strokeWidth: 0),
                    FlDotData(
                        getDotPainter: (p0, p1, p2, p3) => FlDotCirclePainter(
                            radius: 8,
                            strokeWidth: 0,
                            color: Theme.of(context).colorScheme.secondary))))
                .toList(),
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Theme.of(context).colorScheme.secondary,
              getTooltipItems: (touchedSpots) => touchedSpots
                  .map((touchedSpot) => LineTooltipItem(
                      "${DateTime.now().add(Duration(days: touchedSpot.x.toInt())).getRelativeToNowString(DateTime.now())}: ${touchedSpot.y} new words",
                      const TextStyle(color: Colors.white)))
                  .toList(),
            )),
        lineBarsData: [
          LineChartBarData(
            spots: chartSpots,
            dotData: FlDotData(show: false),
            preventCurveOverShooting: true,
            preventCurveOvershootingThreshold: 0,
            isCurved: true,
            color: Theme.of(context).colorScheme.primary,
          )
        ],
        borderData: FlBorderData(
            show: true,
            border: const Border(
                bottom: solidBorderSide,
                top: BorderSide.none,
                left: BorderSide.none,
                right: BorderSide.none)),
        titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
              interval: 7,
              reservedSize: 30,
              getTitlesWidget: (value, meta) => Text(DateTime.now()
                  .add(Duration(days: value.toInt()))
                  .getRelativeToNowString(DateTime.now())),
            ))));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = getDataForChart(context);

    return SizedBox(height: 100, width: 300, child: LineChart(data));
  }
}
