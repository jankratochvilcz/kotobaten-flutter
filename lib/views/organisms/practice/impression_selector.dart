import 'package:flutter/foundation.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/views/organisms/practice/word_impression_selector.dart';

class ImpressionSelector {
  static getWidget(Impression impression, ImpressionViewType viewType) {
    if (impression is CardImpression) {
      return WordImpressionSelector.getWordWidget(impression, viewType);
    } else if (impression is GeneratedSentenceGuessImpression) {
      return WordImpressionSelector.getSentenceWidget(impression, viewType);
    } else {
      throw ErrorDescription('Unsupported impression type');
    }
  }
}
