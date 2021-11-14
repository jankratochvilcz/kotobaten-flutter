
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/user/statistics.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User
{
  factory User.initial() = InitialUser;
  factory User.initialized(Statistics stats) = InitializedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}