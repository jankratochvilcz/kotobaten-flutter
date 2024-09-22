import 'package:flutter/foundation.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/views/organisms/practice/generated_sentence_impression_selector.dart';
import 'package:kotobaten/views/organisms/practice/word_impression_selector.dart';

class ImpressionSelector {
  static getWidget(Impression impression, ImpressionViewType viewType) {
    if (impression is CardImpression) {
      return CardImpressionSelector.getWordWidget(impression, viewType);
    } else if (impression is GeneratedSentenceGuessImpression) {
      return GeneratedSentenceImpressionSelector
          .getGeneratedSentenceGuessImpressionWidget(impression, viewType);
    } else if (impression is GeneratedSentenceWithParticlesSelectImpression) {
      return GeneratedSentenceImpressionSelector
          .getGeneratedSentenceWithParticlesSelectImpressionWidget(
              impression, viewType);
    } else {
      throw ErrorDescription('Unsupported impression type');
    }
  }
}
