import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/headed.dart';

class CardLearn extends StatelessWidget {
  final UserInitialized user;
  final VoidCallback goToPractice;
  final Future Function() updateBackstop;

  const CardLearn(this.user, this.goToPractice, this.updateBackstop, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Headed(
      Column(children: [
        user.stats.leftToPractice > 0
            ? DescriptionRichText(
                [
                  const TextSpan(text: 'You have '),
                  TextSpan(
                      text:
                          '${user.stats.leftToPractice > 0 ? user.stats.leftToPractice.toString() : 'no'} words',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' to refresh.')
                ],
              )
            : const DescriptionRichText(
                [TextSpan(text: 'You\'re done practicing for now! 👏')]),
        DescriptionRichText(
          [
            const TextSpan(text: 'You learned '),
            TextSpan(
                text:
                    '${user.stats.discoveredWeek > 0 ? user.stats.discoveredWeek.toString() : 'no'} words',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const TextSpan(text: ' this week.')
          ],
        ),
        Padding(
            padding: topPadding(PaddingType.large),
            child: Button(
              'Learn',
              () => user.stats.leftToPractice > 0
                  ? goToPractice()
                  : showModalBottomSheet(
                      shape: defaultBottomSheetShape,
                      context: context,
                      builder: (context) => Padding(
                          padding: allPadding(PaddingType.standard),
                          child: SizedBox(
                              height: 180,
                              child: Column(
                                children: [
                                  Padding(
                                      padding:
                                          bottomPadding(PaddingType.xLarge),
                                      child: Description(
                                        'Your next batch of practice words is scheduled for ${user.stats.backstopThresholdExpiryFormatted}. \n\nYou seem eager tho\'. We\'ll fast forward that for you. 💪',
                                        textAlign: TextAlign.center,
                                      )),
                                  Button(
                                    'Learn',
                                    () async {
                                      await updateBackstop();
                                      goToPractice();
                                    },
                                    icon: Icons.bolt_outlined,
                                    size: ButtonSize.big,
                                    type: ButtonType.primary,
                                  )
                                ],
                              )))),
              icon: Icons.bolt_outlined,
              size: ButtonSize.big,
              type: ButtonType.primary,
              shortcut: '⏎',
            ))
      ]),
      'Learn',
      HeadingStyle.h1);
}
