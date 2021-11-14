
import 'package:json_annotation/json_annotation.dart';

part 'statistics.g.dart';

@JsonSerializable()
class Statistics
{
  Statistics(this.leftToPractice, this.discoveredToday, this.discoveredWeek, this.discoveredMonth);

  int leftToPractice;
  int discoveredToday;
  int discoveredWeek;
  int discoveredMonth;

  factory Statistics.fromJson(Map<String, dynamic> json) => _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}