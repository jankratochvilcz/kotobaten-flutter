import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';

abstract class CardImpression implements Impression {
  CardInitialized card;

  CardImpression(this.card);
}
