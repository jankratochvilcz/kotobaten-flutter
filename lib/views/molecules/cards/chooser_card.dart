import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/views/molecules/cards/grammar_card.dart';
import 'package:kotobaten/views/molecules/cards/word_card.dart';

class ChooserCard extends StatelessWidget {
  final card_entity.CardInitialized card;

  const ChooserCard(this.card, {super.key});

  @override
  Widget build(BuildContext context) {
    return card.type == CardType.word ? WordCard(card) : GrammarCard(card);
  }
}
