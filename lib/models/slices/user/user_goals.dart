import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_goals.freezed.dart';
part 'user_goals.g.dart';

@freezed
class UserGoals with _$UserGoals {
  factory UserGoals(
          int discoverWeekly, int discoverMonthly, int discoverDaily) =
      UserGoalsInitialized;

  factory UserGoals.fromJson(Map<String, dynamic> json) =>
      _$UserGoalsFromJson(json);

  factory UserGoals.fromDailyGoal(int dailyGoal) =>
      UserGoals(dailyGoal * 7, dailyGoal * 7 * 4, dailyGoal);
}
