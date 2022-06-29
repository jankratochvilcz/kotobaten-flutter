import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/views/atoms/heading.dart';

showPracticeOnboardingSheet(BuildContext context) => showModalBottomSheet(
    context: context,
    shape: defaultBottomSheetShape,
    builder: (context) => const OnboardingView());

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: horizontalPadding(PaddingType.standard),
        child: SizedBox(
            height: 300,
            child: Stepper(type: StepperType.vertical, steps: [
              Step(
                  title: Heading('The philosophy', HeadingStyle.h3),
                  content: Text('Hello')),
              Step(
                  title: Heading('The philosophy', HeadingStyle.h3),
                  content: Text('Hello')),
              Step(
                  title: Heading('The philosophy', HeadingStyle.h3),
                  content: Text('Hello'))
            ])));
  }
}
