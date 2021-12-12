import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/headed.dart';

class CardLearn extends StatelessWidget {
  final InitializedUser user;
  final VoidCallback goToPractice;

  const CardLearn(this.user, this.goToPractice, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Headed(
      Column(children: [
        DescriptionRichText(
          [
            const TextSpan(text: 'You have '),
            TextSpan(
                text:
                    '${user.stats.leftToPractice > 0 ? user.stats.leftToPractice.toString() : 'no'} words',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const TextSpan(text: ' to refresh.')
          ],
        ),
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
              goToPractice,
              icon: Icons.bolt_outlined,
              size: ButtonSize.big,
              type: ButtonType.primary,
              shortcut: '⏎',
            ))
      ]),
      'Learn',
      HeadingStyle.h1);
}
