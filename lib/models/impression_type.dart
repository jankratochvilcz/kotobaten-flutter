import 'package:freezed_annotation/freezed_annotation.dart';

enum ImpressionType
{
  @JsonValue('KanaRequested') kana,
  @JsonValue('SenseRequested') sense,
  @JsonValue('NewOrForgottenCard') discover
}