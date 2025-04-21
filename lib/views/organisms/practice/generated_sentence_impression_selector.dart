import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_multiselect.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';

class GeneratedSentenceImpressionSelector {
  static Widget getGeneratedSentenceGuessImpressionWidget(
      GeneratedSentenceGuessImpression impression,
      ImpressionViewType viewType) {
    final primaryText = impression.withKanji;
    final secondaryText =
        viewType == ImpressionViewType.wordRevealed ? impression.sense : null;
    final furiganaText = viewType == ImpressionViewType.wordRevealed
        ? impression.kanaOnly
        : null;

    switch (viewType) {
      case ImpressionViewType.wordHidden:
        return ImpressionHidden(primaryText, ImpressionCardAccentType.none);
      case ImpressionViewType.wordRevealed:
        return ImpressionRevealed(primaryText, secondaryText, furiganaText,
            null, ImpressionCardAccentType.none);
      default:
        throw ErrorDescription("Unsupported impressionViewType");
    }
  }

  static Widget getGeneratedSentenceWithParticlesSelectImpressionWidget(
      GeneratedSentenceWithParticlesSelectImpression impression,
      ImpressionViewType viewType,
      PracticeService practiceService) {
    switch (viewType) {
      case ImpressionViewType.multiselectHidden:
        return ImpressionMultiselect(impression, practiceService);
      case ImpressionViewType.multiselectRevealed:
        return ImpressionMultiselect(impression, practiceService);
      default:
        throw ErrorDescription("Unsupported impressionViewType");
    }
  }
}
