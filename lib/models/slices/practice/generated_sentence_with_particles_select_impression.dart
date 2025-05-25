import 'package:kotobaten/models/slices/practice/generated_sentence_option.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class GeneratedSentenceWithParticlesSelectImpression implements Impression {
  final int correctOption;
  final String explanation;
  final String sense;
  final List<Sentence> options;
  final int id;
  final int stackCardId;

  GeneratedSentenceWithParticlesSelectImpression(this.id, this.stackCardId,
      this.correctOption, this.explanation, this.sense, this.options);

  @override
  ImpressionType get type =>
      ImpressionType.generatedSentenceWithParticlesSelect;
}
