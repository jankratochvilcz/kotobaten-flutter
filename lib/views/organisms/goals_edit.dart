import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/services/input_validation/goals_validator.dart';
import 'package:kotobaten/views/molecules/button.dart';

showGoalsEditDialog(
        BuildContext context,
        Future<UserGoals> Function(UserGoals goals) onSubmit,
        UserGoals currentGoals,
        void Function() goBack) =>
    showModalBottomSheet(
        context: context,
        builder: (x) => Padding(
            padding: MediaQuery.of(x).viewInsets,
            child: Material(
                child: GoalsEditDialog(
              (card) async {
                await onSubmit(card);

                goBack();
                ScaffoldMessenger.of(x).showSnackBar(
                    const SnackBar(content: Text('Goals edited.')));
              },
              currentGoals,
            ))));

class GoalsEditDialog extends StatefulWidget {
  final void Function(UserGoals goals) _onSubmit;
  final UserGoals currentGoals;

  const GoalsEditDialog(this._onSubmit, this.currentGoals, {Key? key})
      : super(key: key);

  @override
  _GoalsEditDialogState createState() => _GoalsEditDialogState();
}

class _GoalsEditDialogState extends State<GoalsEditDialog> {
  final _formKey = GlobalKey<FormState>();

  final _goalDayController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _goalDayController.text = widget.currentGoals.discoverDaily.toString();
  }

  @override
  Widget build(BuildContext context) {
    onEditComplete() {
      if (_formKey.currentState!.validate()) {
        final dailyGoal = int.parse(_goalDayController.text);
        final goals = UserGoals.fromDailyGoal(dailyGoal);
        widget._onSubmit(goals);
      }
    }

    return Form(
        key: _formKey,
        child: Padding(
          padding: allPadding(PaddingType.large),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                    width: 120,
                    child: TextFormField(
                      controller: _goalDayController,
                      validator: validateGoal,
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(suffixText: 'new words'),
                    )),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Button(
                      'Save',
                      onEditComplete,
                      icon: Icons.edit_outlined,
                    ))
              ]),
        ));
  }
}
