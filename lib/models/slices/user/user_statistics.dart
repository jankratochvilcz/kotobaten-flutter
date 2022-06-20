import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/user/user_day_streak.dart';

part 'user_statistics.g.dart';
part 'user_statistics.freezed.dart';

@freezed
class UserStatistics with _$UserStatistics {
  factory UserStatistics(
      int leftToPractice,
      int discoveredToday,
      int discoveredWeek,
      int discoveredMonth,
      int addedWeek,
      DateTime? nextToDiscoverCreated,
      double? currentBackstop,
      double retentionThreshold,
      String? backstopThresholdExpiryFormatted,
      {List<DayStreak>? streaks}) = UserStatisticsInitialized;

  factory UserStatistics.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticsFromJson(json);
}
