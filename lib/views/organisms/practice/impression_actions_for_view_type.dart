import 'package:flutter/material.dart';
import 'package:kotobaten/models/slices/practice/impression_view.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden_actions.dart';
import 'package:kotobaten/views/organisms/practice/impression_new_actions.dart';
import 'package:kotobaten/views/organisms/practice/impression_revealed_actions.dart';

class ImpressionActionsForViewType extends StatelessWidget {
  final ImpressionViewType impressionViewType;

  final String hintText;

  final void Function(bool) onAnswered;
  final VoidCallback revealAnswer;
  final VoidCallback toggleTimer;

  const ImpressionActionsForViewType(this.impressionViewType, this.hintText,
      this.onAnswered, this.revealAnswer, this.toggleTimer,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (impressionViewType) {
      case ImpressionViewType.wordHidden:
        return ImpressionHiddenActions(hintText, revealAnswer, toggleTimer);
      case ImpressionViewType.wordRevealed:
        return ImpressionRevealedActions(onAnswered, toggleTimer);
      case ImpressionViewType.wordDiscover:
        return ImpressionNextActions(() => onAnswered(true));
      case ImpressionViewType.multiselect:
        return const Empty();
      default:
        throw ErrorDescription("Unsupported impressionViewType");
    }
  }
}
