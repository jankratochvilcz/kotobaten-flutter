import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class GeneratedSentenceGuessImpression implements Impression {
  final String kanaOnly;
  final String withKanji;
  final String sense;

  GeneratedSentenceGuessImpression(this.kanaOnly, this.withKanji, this.sense);

  @override
  ImpressionType get type => ImpressionType.generatedSentenceGuess;
}
