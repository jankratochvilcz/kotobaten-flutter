import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_statistics_day.g.dart';
part 'user_statistics_day.freezed.dart';

@freezed
class UserStatisticsDay with _$UserStatisticsDay {
  factory UserStatisticsDay(
          DateTime date, int cardsAdded, int cardsDiscovered) =
      UserStatisticsDayInitialized;

  factory UserStatisticsDay.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticsDayFromJson(json);
}
