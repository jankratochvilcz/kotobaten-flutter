import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/datetime.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/headed.dart';

class CardLearn extends StatelessWidget {
  final InitializedUser user;

  const CardLearn(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Headed(
      Column(children: [
        DescriptionRichText(
          [
            const TextSpan(text: 'You added '),
            TextSpan(
                text:
                    '${user.stats.addedWeek > 0 ? user.stats.addedWeek.toString() : 'no'} words',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const TextSpan(text: ' this week.')
          ],
        ),
        if (user.stats.nextToDiscoverCreated != null)
          DescriptionRichText(
            [
              const TextSpan(text: 'You\'re learning words from '),
              TextSpan(
                  text: user.stats.nextToDiscoverCreated
                      ?.getRelativeToNowString(DateTime.now()),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: '.')
            ],
          ),
        Padding(
            padding: topPadding(PaddingType.large),
            child: Button('Add word', () => {},
                icon: Icons.add_circle_outline,
                size: ButtonSize.big,
                type: ButtonType.secondary))
      ]),
      'Collect',
      HeadingStyle.h1);
}
