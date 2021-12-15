import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/extensions/datetime.dart';
import 'package:kotobaten/models/card.dart' as card_model;
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class CardCollect extends StatelessWidget {
  final InitializedUser user;

  final Future<card_model.Card?> Function(card_model.Card data) _onWordSubmit;

  const CardCollect(this.user, this._onWordSubmit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Headed(
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
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Button(
                  'View all',
                  () => Navigator.pushNamed(context, collectionRoute),
                  icon: Icons.inbox_outlined,
                  type: ButtonType.secondary,
                ),
                Button('Add word',
                    () => showWordAddBottomSheet(context, _onWordSubmit),
                    icon: Icons.move_to_inbox_outlined,
                    type: ButtonType.standard)
              ]))
        ]),
        'Collect',
        HeadingStyle.h1);
  }
}
