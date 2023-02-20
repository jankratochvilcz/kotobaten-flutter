import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/user/user_statistics_day.dart';

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
      List<UserStatisticsDayInitialized> dayStats) = UserStatisticsInitialized;

  factory UserStatistics.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticsFromJson(json);
}
