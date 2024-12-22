import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class SenseGuessImpression extends CardImpression {
  final String? _speechPath;

  String? get speechPath => _speechPath;

  SenseGuessImpression(super.card, this._speechPath);

  @override
  ImpressionType get type => ImpressionType.senseGuess;
}
