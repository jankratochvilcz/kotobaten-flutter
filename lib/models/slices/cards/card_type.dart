import 'package:freezed_annotation/freezed_annotation.dart';

enum CardType {
  @JsonValue("Word")
  word,

  @JsonValue("Grammar")
  grammar
}
