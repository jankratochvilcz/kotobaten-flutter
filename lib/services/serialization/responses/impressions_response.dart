
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/user/statistics.dart';

part 'impressions_response.freezed.dart';
part 'impressions_response.g.dart';

@freezed
class ImpressionsResponse with _$ImpressionsResponse
{
  factory ImpressionsResponse.initialized(Statistics userStats) = Initialized;

  factory ImpressionsResponse.fromJson(Map<String, dynamic> json) => _$ImpressionsResponseFromJson(json);
}