import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';
import 'package:kotobaten/views/organisms/practice/impression_new.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed.dart';

// This cannot be a Widget as that breaks the AnimatedSwitcher which no longer detects a changing child
Widget getImpressionForViewType(
    ImpressionViewType impressionViewType,
    String primaryText,
    String? secondaryText,
    String? furigana,
    String hintText,
    String? note,
    ImpressionCardAccentType? accent) {
  switch (impressionViewType) {
    case ImpressionViewType.hidden:
      return ImpressionHidden(
          primaryText, hintText, accent ?? ImpressionCardAccentType.none);
    case ImpressionViewType.revealed:
      return ImpressionRevealed(
          primaryText, secondaryText, furigana, note, accent);
    case ImpressionViewType.discover:
      return ImpressionNew(primaryText, secondaryText, furigana, note);
    default:
      throw ErrorDescription("Unsupported impressionViewType");
  }
}
