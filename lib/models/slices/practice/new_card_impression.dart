import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';

class NewCardImpression extends CardImpression {
  NewCardImpression(super.card);

  @override
  ImpressionType get type => ImpressionType.newCard;
}
