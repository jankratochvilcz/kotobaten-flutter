import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/services/input_validation/goals_validator.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/atoms/logo.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = useState(0);

    final userModel = ref.watch(userRepositoryProvider);
    final authModel = ref.watch(authRepositoryProvider);
    final userService = ref.watch(userServiceProvider);
    final authService = ref.read(authServiceProvider);
    final cardsService = ref.watch(cardsServiceProvider);

    final _goalDayController = useTextEditingController(text: '5');

    if (authModel is AuthModelInitial) {
      Future.microtask(() async {
        await authService.initialize();
      });

      return const Loading();
    }

    if (authModel is AuthModelAuthenticated && userModel is UserModelInitial) {
      Future.microtask(() => userService.refreshUser());

      return const Loading();
    }

    final userModelInitialized = userModel as UserModelInitialized;
    final cardsLeftToAdd = userModelInitialized.user.goals.discoverDaily -
        userModel.user.stats.addedWeek;

    if (cardsLeftToAdd < 1 && currentStep.value == 2) {
      currentStep.value++;
    }

    return Material(
      child: Column(children: [
        Padding(padding: allPadding(PaddingType.xxLarge), child: const Logo()),
        ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Stepper(
              currentStep: currentStep.value,
              controlsBuilder:
                  (BuildContext context, ControlsDetails details) =>
                      Row(children: const []),
              steps: [
                Step(
                    title: const Heading('Welcome 🙌', HeadingStyle.h2),
                    content: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: bottomPadding(PaddingType.standard),
                                  child: const Text(
                                      'Kotobaten gives you a simple but powerful system to learn Japanese vocabulary and retain it. The system boils down to two things:')),
                              Padding(
                                  padding:
                                      verticalPadding(PaddingType.standard),
                                  child: const Text(
                                      '1) When you see an interesting word in the wild, add it to Kotobaten.')),
                              Padding(
                                  padding: bottomPadding(PaddingType.standard),
                                  child: const Text(
                                      '2) Return daily to refesh words you learned before and pick up new ones.')),
                              Padding(
                                  padding:
                                      verticalPadding(PaddingType.standard),
                                  child: const Text(
                                      'If you can keep it up, you will level up your Japanese in no time! ⚡')),
                              Padding(
                                  padding: topPadding(PaddingType.standard),
                                  child: Button(
                                      'Got it!', () => currentStep.value++,
                                      type: ButtonType.primary,
                                      icon: Icons.check_outlined))
                            ]))),
                Step(
                    title: const Heading('Set a goal 🎯', HeadingStyle.h2),
                    content: Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: bottomPadding(PaddingType.standard),
                                child: const Text(
                                    'Pick how many new words you want to learn daily. Five words per day gives you a solid balance, but make it your own! You can refine your goals any time.')),
                            Padding(
                                padding: bottomPadding(PaddingType.standard),
                                child: const Description(
                                    'You can refine your goals at any time.')),
                            TextFormField(
                              controller: _goalDayController,
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              validator: validateGoal,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  suffixText: 'new words'),
                            ),
                            Padding(
                                padding: topPadding(PaddingType.xLarge),
                                child: ButtonAsync('Save', () async {
                                  await userService.updateGoals(
                                      UserGoals.fromDailyGoal(
                                          int.parse(_goalDayController.text)));
                                  currentStep.value++;
                                },
                                    type: ButtonType.primary,
                                    icon: Icons.check_outlined))
                          ],
                        ))),
                Step(
                    title:
                        const Heading('Add words for today ✍', HeadingStyle.h2),
                    content: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'You set your goal to ${userModelInitialized.user.goals.discoverDaily} new words per day. Time to put words to action and add the words you want to learn today. 💪'),
                              Padding(
                                  padding: topPadding(PaddingType.xLarge),
                                  child: Button(
                                      'Add word ($cardsLeftToAdd left)',
                                      () => showWordAddBottomSheet(context,
                                              (card) async {
                                            if (card is card_entity.CardNew) {
                                              return await cardsService
                                                  .createCard(card);
                                            }

                                            if (card is card_entity
                                                .CardInitialized) {
                                              return await cardsService
                                                  .editCard(card);
                                            }

                                            throw UnsupportedError(
                                                'Action only supported for new and initialized cards');
                                          }),
                                      icon: Icons.add_outlined,
                                      type: ButtonType.primary))
                            ]))),
                Step(
                    title: const Heading('Start learning ⚡', HeadingStyle.h2),
                    content: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'Good luck on your learning journey! Keep in mind that everyone has a setback once in a while; that\'s ok!'),
                              Padding(
                                  padding: topPadding(PaddingType.xLarge),
                                  child: const Text(
                                    '猿も木から落ちる',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )),
                              const Description(
                                  'ー Even monkeys fall from tree sometimes.'),
                              Padding(
                                  padding: topPadding(PaddingType.xLarge),
                                  child: ButtonAsync('Start learning',
                                      () async {
                                    await userService.completeOnboarding();
                                    await Navigator.pushNamedAndRemoveUntil(
                                        context, homeRoute, (route) => false);
                                  },
                                      icon: Icons.bolt_outlined,
                                      type: ButtonType.primary))
                            ])))
              ],
            ))
      ]),
    );
  }
}
