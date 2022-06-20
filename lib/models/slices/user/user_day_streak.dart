import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_day_streak.freezed.dart';
part 'user_day_streak.g.dart';

@freezed
class DayStreak with _$DayStreak {
  factory DayStreak.initialized(DateTime date, bool hasStreak) =
      DayStreakInitialized;

  factory DayStreak.fromJson(Map<String, dynamic> json) =>
      _$DayStreakFromJson(json);
}
