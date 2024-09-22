import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/practice/generated_sentence_with_particles_select_impression.dart';
import 'package:kotobaten/views/molecules/multiselect_card.dart';

class ImpressionMultiselect extends StatelessWidget {
  final GeneratedSentenceWithParticlesSelectImpression impression;
  final bool revealed;

  const ImpressionMultiselect(this.impression, this.revealed, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiselectCard(
      impression: impression,
      revealed: revealed,
    );
  }
}
