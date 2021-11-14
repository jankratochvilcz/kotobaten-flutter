
import 'package:json_annotation/json_annotation.dart';
import 'package:kotobaten/models/user/statistics.dart';

part 'user.g.dart';

@JsonSerializable()
class User
{
  User(this.stats);

  Statistics stats;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}