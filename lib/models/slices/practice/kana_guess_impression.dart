import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class KanaGuessImpression extends CardImpression {
  KanaGuessImpression(super.card);

  @override
  ImpressionType get type => ImpressionType.kanaGuess;
}
