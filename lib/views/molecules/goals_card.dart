import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/chart_progress.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/molecules/progress_infobox.dart';
import 'package:kotobaten/views/organisms/goal_rings.dart';
import 'package:kotobaten/views/organisms/loading.dart';

enum ChartType { goals, discoveredCards }

class DropdownOption {
  ChartType chartType;
  String description;
  IconData icon;

  DropdownOption(this.chartType, this.description, this.icon);
}

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

class GoalsCard extends HookConsumerWidget {
  const GoalsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);
    final dropdownMode = useState(ChartType.goals);

    final dropdownOptions = [
      DropdownOption(ChartType.goals, 'Goals', Icons.golf_course_outlined),
      DropdownOption(
          ChartType.discoveredCards, 'Discovered', Icons.auto_graph_outlined)
    ];

    if (userModel is UserModelInitialized) {
      return Headed(
          MediaQuery.of(context).size.width > 400
              ? Padding(
                  padding: topPadding(PaddingType.standard),
                  child: dropdownMode.value == ChartType.goals
                      ? Row(
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
                        )
                      : ChartProgress(userModel.user.stats.dayStats.toList()))
              : Padding(
                  padding: topPadding(PaddingType.standard),
                  child: dropdownMode.value == ChartType.goals
                      ? Column(
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
                        )
                      : ChartProgress(userModel.user.stats.dayStats.toList())),
          Row(children: [
            const Spacer(),
            const Heading("Progress", HeadingStyle.h1),
            Padding(
                padding: leftPadding(PaddingType.xLarge),
                child: DropdownButton(
                    alignment: AlignmentDirectional.centerEnd,
                    focusColor: Colors.transparent,
                    dropdownColor: Theme.of(context).colorScheme.background,
                    underline: const Empty(),
                    icon: const Icon(Icons.more_horiz_outlined,
                        size: 0, color: Colors.black38),
                    value: dropdownMode.value,
                    items: dropdownOptions
                        .map((dropdownOption) => DropdownMenuItem(
                            value: dropdownOption.chartType,
                            child: Padding(
                                padding: rightPadding(PaddingType.standard),
                                child: Row(children: [
                                  Padding(
                                      padding: rightPadding(PaddingType.small),
                                      child: Icon(
                                        dropdownOption.icon,
                                        color: Colors.black38,
                                      )),
                                  Text(dropdownOption.description,
                                      style: const TextStyle(
                                          color: Colors.black38))
                                ]))))
                        .toList(),
                    onChanged: (selectedOption) {
                      if (selectedOption != null) {
                        dropdownMode.value = selectedOption;
                      }
                    })),
            const Spacer()
          ]));
    }

    return const Loading();
  }
}
