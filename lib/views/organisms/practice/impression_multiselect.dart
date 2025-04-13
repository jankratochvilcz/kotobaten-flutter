import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/views/molecules/multiselect_card_hidden.dart';

class ImpressionMultiselect extends StatelessWidget {
  final GeneratedSentenceWithParticlesSelectImpression impression;
  final bool revealed;
  final PracticeService practiceService;

  const ImpressionMultiselect(
      this.impression, this.revealed, this.practiceService,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!revealed)
      return MultiselectCardHidden(
        impression: impression,
        practiceService: this.practiceService,
      );

    return MultiselectCardRevealed(
      impression: impression,
    );
  }
}
