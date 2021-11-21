
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/card.dart';
import 'package:kotobaten/models/impression_type.dart';

part 'impression.freezed.dart';
part 'impression.g.dart';

@freezed
class Impression with _$Impression
{
  factory Impression.initialized(Card card, ImpressionType impressionType) = Initialized;

  factory Impression.fromJson(Map<String, dynamic> json) => _$ImpressionFromJson(json);
}