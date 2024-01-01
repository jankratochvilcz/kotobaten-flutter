import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/views/molecules/cards/chooser_card.dart';

class WordGrid extends HookConsumerWidget {
  final Iterable<CardInitialized> cards;

  const WordGrid(this.cards, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      direction: Axis.horizontal,
      children: cards
          .map((card) => ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: 500, maxHeight: 158, minHeight: 158),
              child: ChooserCard(card)))
          .toList(),
    );
  }
}
