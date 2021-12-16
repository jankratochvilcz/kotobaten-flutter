import 'package:kotobaten/models/user/user.dart';

class UserGoalsProgress {
  final double dailyProgress;
  final double weeklyProgress;
  final double monthlyProgress;

  UserGoalsProgress(
      this.dailyProgress, this.weeklyProgress, this.monthlyProgress);

  factory UserGoalsProgress.empty() => UserGoalsProgress(0, 0, 0);
}

extension InitializedUserExtensions on InitializedUser {
  UserGoalsProgress getGoalsProgress() {
    final double dailyProgress = stats.discoveredToday / goals.discoverDaily;
    final double weeklyProgress = stats.discoveredWeek / goals.discoverWeekly;
    final double monthlyProgress =
        stats.discoveredMonth / goals.discoverMonthly;

    return UserGoalsProgress(dailyProgress, weeklyProgress, monthlyProgress);
  }
}
