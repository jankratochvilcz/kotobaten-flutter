import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/input_validation/goals_validator.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';

class GoalsCard extends HookConsumerWidget {
  const GoalsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);
    final userService = ref.read(userServiceProvider);
    final textController = useState(TextEditingController());
    final isIntialized = useState(false);

    if (userModel is! UserModelInitialized) {
      return const Loading();
    }

    if (!isIntialized.value) {
      textController.value.text = userModel.user.goals.discoverDaily.toString();
      isIntialized.value = true;
    }

    return Headed(
        Column(
          children: [
            const Description(
                'Set how many new words you want to learn each day. Keep in mind that the faster you learn words, the more you will need to practice.'),
            SizedBox(
                width: 400,
                child: TextFormField(
                  controller: textController.value,
                  validator: validateGoal,
                  autofocus: true,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(suffixText: 'new words'),
                  onChanged: (value) {
                    final valueAsInt = int.parse(value);

                    // TODO: I should bring back the individual settings.
                    userService.updateGoals(
                        UserGoals(valueAsInt * 7, valueAsInt * 30, valueAsInt));
                  },
                ))
          ],
        ),
        const Heading('Daily goal', HeadingStyle.h2));
  }
}
