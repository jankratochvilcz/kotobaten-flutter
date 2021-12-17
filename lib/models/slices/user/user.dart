// freezed handles annotations on args https://pub.dev/packages/freezed
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/user/user_core.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/models/slices/user/user_statistics.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User(UserStatistics stats, UserCore user, UserGoals goals) =
      UserInitialized;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
