import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';

part 'practice_response.freezed.dart';
part 'practice_response.g.dart';

@freezed
class PracticeResponse with _$PracticeResponse {
  factory PracticeResponse.initialized(List<Impression> impressions) =
      Initialized;

  factory PracticeResponse.fromJson(Map<String, dynamic> json) =>
      _$PracticeResponseFromJson(json);
}
