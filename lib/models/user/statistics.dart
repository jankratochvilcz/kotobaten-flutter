import 'package:json_annotation/json_annotation.dart';

part 'statistics.g.dart';

@JsonSerializable()
class Statistics {
  Statistics(
      this.leftToPractice,
      this.discoveredToday,
      this.discoveredWeek,
      this.discoveredMonth,
      this.addedWeek,
      this.nextToDiscoverCreated,
      this.currentBackstop,
      this.retentionThreshold);

  int leftToPractice;
  int discoveredToday;
  int discoveredWeek;
  int discoveredMonth;
  int addedWeek;
  DateTime? nextToDiscoverCreated;
  double? currentBackstop;
  double retentionThreshold;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}
