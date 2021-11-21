
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/impression.dart';

part 'impressions_response.freezed.dart';
part 'impressions_response.g.dart';

@freezed
class ImpressionsResponse with _$ImpressionsResponse
{
  factory ImpressionsResponse.initialized(List<Impression> impressions) = Initialized;

  factory ImpressionsResponse.fromJson(Map<String, dynamic> json) => _$ImpressionsResponseFromJson(json);
}