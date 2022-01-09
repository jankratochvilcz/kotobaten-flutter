import 'package:kotobaten/models/slices/user/user.dart';

class UserGoalsProgress {
  final double dailyProgress;
  final double weeklyProgress;
  final double monthlyProgress;

  UserGoalsProgress(
      this.dailyProgress, this.weeklyProgress, this.monthlyProgress);

  factory UserGoalsProgress.empty() => UserGoalsProgress(0, 0, 0);
}

extension InitializedUserExtensions on UserInitialized {
  UserGoalsProgress getGoalsProgress() {
    double getProgress(int discovered, int goal) {
      if (goal < 1) {
        return 0;
      }

      return discovered / goal;
    }

    final double dailyProgress =
        getProgress(stats.discoveredToday, goals.discoverDaily);
    final double weeklyProgress =
        getProgress(stats.discoveredWeek, goals.discoverWeekly);
    final double monthlyProgress =
        getProgress(stats.discoveredMonth, goals.discoverMonthly);

    return UserGoalsProgress(dailyProgress, weeklyProgress, monthlyProgress);
  }

  double getNormalizedConsistency() =>
      (1 / stats.retentionThreshold) * (stats.currentBackstop ?? 0);
}
