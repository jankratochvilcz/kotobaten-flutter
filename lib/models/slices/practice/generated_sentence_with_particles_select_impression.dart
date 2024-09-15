import 'package:kotobaten/models/slices/practice/generated_sentence_option.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class MultiselectImpression implements Impression {
  final int correctOption;
  final String explanation;
  final String sense;
  final List<Sentence> options;

  MultiselectImpression(
      this.correctOption, this.explanation, this.sense, this.options);

  @override
  ImpressionType get type =>
      ImpressionType.generatedSentenceWithParticlesSelect;
}
