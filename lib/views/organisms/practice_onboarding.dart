import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';

showPracticeOnboardingSheet(BuildContext context) => showModalBottomSheet(
    context: context,
    shape: defaultBottomSheetShape,
    builder: (context) => const OnboardingView());

class _OnboardingStep {
  final String text;
  final String action;
  final String imagePath;
  _OnboardingStep(this.text, this.action, this.imagePath);
}

const copyStep0 =
    "The learning loop in Kotobaten is as simple as it gets.\n\n Look at the card and remember the bit of information indicated below the Reveal answer button.\nNext, mark whether you remembered the correct answer (or drew a blank 😅).";
const copyStep1 =
    "Kotobaten will show you the cards giving you trouble several time, until you can remember them with confidence.";
const copyStep2 =
    "You have limited time to remember each word. This better prepares you for using the word in the wild. But, you can always hold the Reveal button if you need a bit more time.";

const nextStepAction = "Next";
const lastStepAction = "Go!";

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final step = useState(0);
    final steps = [
      _OnboardingStep(copyStep0, nextStepAction,
          "assets/onboarding/practice_onboarding_0.png"),
      _OnboardingStep(copyStep1, nextStepAction,
          "assets/onboarding/practice_onboarding_1.png"),
      _OnboardingStep(copyStep2, lastStepAction,
          "assets/onboarding/practice_onboarding_2.png")
    ];

    final currentStep = steps[step.value];

    return Padding(
        padding: horizontalPadding(PaddingType.standard),
        child: SizedBox(
            height: 440,
            child: Column(
              children: [
                Padding(
                    padding: topPadding(PaddingType.large),
                    child: const Heading(
                        'The basics of learning', HeadingStyle.h3)),
                Image(
                  image: AssetImage(currentStep.imagePath),
                ),
                SizedBox(
                    height: 150,
                    child: Padding(
                        padding: verticalPadding(PaddingType.large),
                        child: Text(currentStep.text))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Description("${step.value + 1}/${steps.length}"),
                    Button(
                      currentStep.action,
                      () => step.value + 1 >= steps.length
                          ? Navigator.of(context).pop()
                          : step.value++,
                    ),
                  ],
                )
              ],
            )));
  }
}
