
import 'package:json_annotation/json_annotation.dart';

part 'statistics.g.dart';

@JsonSerializable()
class Statistics
{
  Statistics(this.leftToPractice, this.discoveredToday);

  int leftToPractice;
  int discoveredToday;

  factory Statistics.fromJson(Map<String, dynamic> json) => _$StatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsToJson(this);
}