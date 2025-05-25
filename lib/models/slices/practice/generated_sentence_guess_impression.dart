import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class GeneratedSentenceGuessImpression implements Impression {
  final String kanaOnly;
  final String withKanji;
  final String sense;
  final int id;
  final int stackCardId;

  GeneratedSentenceGuessImpression(
      this.id, this.stackCardId, this.kanaOnly, this.withKanji, this.sense);

  @override
  ImpressionType get type => ImpressionType.generatedSentenceGuess;
}
