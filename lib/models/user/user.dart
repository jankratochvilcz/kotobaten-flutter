import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/user/statistics.dart';
import 'package:kotobaten/models/user/user_core.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User.initial() = InitialUser;
  factory User.initialized(Statistics stats, UserCore user) = InitializedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
