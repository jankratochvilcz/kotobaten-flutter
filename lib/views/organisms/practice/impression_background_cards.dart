import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/views/molecules/impression_card.dart';

int getBackgroundCardsCount(
        ImpressionViewType impressionViewType, int cardsRemaining) =>
    impressionViewType == ImpressionViewType.revealed
        ? cardsRemaining - 1
        : cardsRemaining;

List<Widget> getBackgroundCards(int count, Color color) {
  final cards = <Widget>[];

  final backgroundCards = count;

  for (var i = 0; i < backgroundCards; i++) {
    cards.add(Transform.scale(
        scale: 1 - (backgroundCards - i) * 0.05,
        child: Transform.translate(
            offset: Offset(0, (backgroundCards - i) * -16),
            child: Padding(
                padding: allPadding(PaddingType.xxLarge),
                child: Center(
                    child: Card(
                        color: color,
                        elevation: 2,
                        child: ConstrainedBox(
                            constraints:
                                const BoxConstraints(maxHeight: cardSize),
                            child: const AspectRatio(aspectRatio: 1))))))));
  }

  return cards;
}
