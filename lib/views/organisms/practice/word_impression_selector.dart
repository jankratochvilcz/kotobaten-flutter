import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/models/slices/practice/kana_guess_impression.dart';
import 'package:kotobaten/models/slices/practice/new_card_impression.dart';
import 'package:kotobaten/models/slices/practice/sense_guess_impression.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_new.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';

// Technically not a component since this would break higher-level animations (I can't have this component be permanent, I need to change the component when the word changes for the animation to take place)
class CardImpressionSelector {
  static String? _getPrimaryTextRevealedState(CardImpression impression) {
    if (impression.card.type == CardType.grammar) {
      return impression.card.sense;
    }

    return impression.card.kanji ?? impression.card.kana;
  }

  static String? _getPrimaryTextDefaultState(CardImpression impression) {
    if (impression is SenseGuessImpression) {
      return impression.card.kana ?? impression.card.kanji;
    } else if (impression is KanaGuessImpression) {
      return impression.card.type == CardType.grammar
          ? impression.card.sense
          : (impression.card.kanji ?? impression.card.sense);
    } else if (impression is NewCardImpression) {
      return _getPrimaryTextRevealedState(impression);
    } else {
      throw Exception(
          "Unsupported impression type for primary text default state: ${impression.type}");
    }
  }

  static T? _nullIfHidden<T>(
      Function getter, Impression impression, ImpressionViewType viewType) {
    if (viewType == ImpressionViewType.wordHidden &&
        impression is! NewCardImpression) {
      return null;
    }

    return getter();
  }

  static String _getPrimaryText(
      CardImpression impression, ImpressionViewType viewType) {
    final primaryText = viewType == ImpressionViewType.wordRevealed
        ? _getPrimaryTextRevealedState(impression)
        : _getPrimaryTextDefaultState(impression);

    return primaryText ?? '';
  }

  static String? _getFuriganaText(
          CardImpression impression, ImpressionViewType viewType) =>
      _nullIfHidden(() {
        if (impression.card.type == CardType.grammar) {
          return impression.card.kana;
        }

        return impression.card.kanji != null ? impression.card.kana : null;
      }, impression, viewType);

  static String? _getSecondaryText(
          CardImpression impression, ImpressionViewType viewType) =>
      _nullIfHidden(
          () => impression.card.type == CardType.grammar
              ? impression.card.kanji
              : impression.card.sense,
          impression,
          viewType);

  static String? _getNoteText(
          CardImpression impression, ImpressionViewType vieWType) =>
      _nullIfHidden(() => impression.card.note, impression, vieWType);

  static Widget getWordWidget(
      CardImpression impression, ImpressionViewType viewType) {
    final primaryText = _getPrimaryText(impression, viewType);
    final secondaryText = _getSecondaryText(impression, viewType);
    final noteText = _getNoteText(impression, viewType);
    final furiganaText = _getFuriganaText(impression, viewType);
    final accent = impression.card.type == CardType.grammar
        ? ImpressionCardAccentType.grammar
        : ImpressionCardAccentType.none;

    switch (viewType) {
      case ImpressionViewType.wordHidden:
        return ImpressionHidden(primaryText, accent);
      case ImpressionViewType.wordRevealed:
        return ImpressionRevealed(
            primaryText, secondaryText, furiganaText, noteText, accent);
      case ImpressionViewType.wordDiscover:
        return ImpressionNew(
            primaryText, secondaryText, furiganaText, noteText);
      default:
        throw ErrorDescription("Unsupported impressionViewType");
    }
  }
}
