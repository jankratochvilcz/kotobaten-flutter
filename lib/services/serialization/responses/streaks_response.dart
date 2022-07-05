import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/user/user_day_streak.dart';

part 'streaks_response.freezed.dart';
part 'streaks_response.g.dart';

@freezed
class StreaksResponse with _$StreaksResponse {
  factory StreaksResponse.initialized(List<DayStreak> days) =
      StreakResponseInitialized;

  factory StreaksResponse.fromJson(Map<String, dynamic> json) =>
      _$StreaksResponseFromJson(json);
}
