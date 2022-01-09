import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/atoms/logo.dart';
import 'package:kotobaten/views/organisms/goals_edit.dart';

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = useState(0);

    final userModel = ref.watch(userRepositoryProvider);
    final userService = ref.watch(userServiceProvider);

    return Material(
      child: Column(children: [
        Padding(padding: allPadding(PaddingType.xxLarge), child: const Logo()),
        Stepper(
          currentStep: currentStep.value,
          onStepContinue: () => currentStep.value++,
          onStepCancel: () {
            if (currentStep.value > 0) {
              currentStep.value--;
            }
          },
          steps: [
            Step(
                title: const Heading('Welcome 🙌', HeadingStyle.h2),
                content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: bottomPadding(PaddingType.standard),
                          child: const Text(
                              'Using Kotobaten boils down to two things.')),
                      Padding(
                          padding: bottomPadding(PaddingType.standard),
                          child: const Text(
                              'First, whenever you see an interesting work in the wild, add it to Kotobaten.')),
                      Padding(
                          padding: bottomPadding(PaddingType.standard),
                          child: const Text(
                              'Second, come back daily to refesh the words you learned before and pick up a few new ones.')),
                      Padding(
                          padding: bottomPadding(PaddingType.standard),
                          child: const Text(
                              'That\'s it. Kotobaten will figure out which words to recap and learn at the best time. ⚡'))
                    ])),
            Step(
                title: const Heading('Set a goal 🎯', HeadingStyle.h2),
                content: Row(
                  children: [
                    Flexible(
                        child: Padding(
                            padding: bottomPadding(PaddingType.standard),
                            child: const Text(
                                'Five words per day is a solid start, but the goal your own.'))),
                    Expanded(
                        child: GoalsEditDialog(userService.updateGoals,
                            (userModel as UserModelInitialized).user.goals))
                  ],
                )),
            Step(
                title: const Heading('Add words for today ✍', HeadingStyle.h2),
                content: Text('How it works placeholder')),
            Step(
                title: const Heading('Start learning ⚡', HeadingStyle.h2),
                content: Text('How it works placeholder'))
          ],
        )
      ]),
    );
  }
}
