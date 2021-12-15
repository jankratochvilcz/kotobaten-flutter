import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals.freezed.dart';
part 'goals.g.dart';

@freezed
class Goals with _$Goals {
  factory Goals(int discoverWeekly, int discoverMonthly, int discoverDaily) =
      GoalsInitialized;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}
