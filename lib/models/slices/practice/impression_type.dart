import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum ImpressionType {
  @JsonValue('KanaGuess')
  kanaGuess,
  @JsonValue('SenseGuess')
  senseGuess,
  @JsonValue('NewCard')
  newCard,
  @JsonValue('GeneratedSentenceGuess')
  generatedSentenceGuess,
  @JsonValue('GeneratedSentenceWithParticlesSelect')
  generatedSentenceWithParticlesSelect,
}
