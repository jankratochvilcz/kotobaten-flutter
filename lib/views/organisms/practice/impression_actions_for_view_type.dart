import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden_actions.dart';
import 'package:kotobaten/views/organisms/practice/impression_new_actions.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed_actions.dart';

class ImpressionActionsForViewType extends StatelessWidget {
  final ImpressionViewType impressionViewType;

  final double elapsedPercentage;
  final String hintText;

  final void Function(bool) onAnswered;
  final VoidCallback revealAnswer;
  final VoidCallback toggleTimer;

  const ImpressionActionsForViewType(
      this.impressionViewType,
      this.elapsedPercentage,
      this.hintText,
      this.onAnswered,
      this.revealAnswer,
      this.toggleTimer,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (impressionViewType) {
      case ImpressionViewType.hidden:
        return ImpressionHiddenActions(
            hintText, revealAnswer, elapsedPercentage, toggleTimer);
      case ImpressionViewType.revealed:
        return ImpressionRevealedActions(
            onAnswered, elapsedPercentage, toggleTimer);
      case ImpressionViewType.discover:
        return ImpressionNewActions(() => onAnswered(true));
      default:
        throw ErrorDescription("Unsupported impressionViewType");
    }
  }
}
