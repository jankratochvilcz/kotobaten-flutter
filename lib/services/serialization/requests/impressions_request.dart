import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

part 'impressions_request.freezed.dart';
part 'impressions_request.g.dart';

@freezed
class ImpressionsRequest with _$ImpressionsRequest {
  factory ImpressionsRequest.initialized(ImpressionType impressionType,
      int stackCardId, bool success, DateTime timestamp) = Initialized;

  factory ImpressionsRequest.fromJson(Map<String, dynamic> json) =>
      _$ImpressionsRequestFromJson(json);
}
