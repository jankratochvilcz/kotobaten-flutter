import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kotobaten/consts/paddings.dart';
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
    final isSavingNewWord = useState(false);

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
              child: Button(
                  'Add word',
                  () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      builder: (context) => Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: WordAddForm((card) async {
                            isSavingNewWord.value = true;
                            final createdCard = await _onWordSubmit(card);

                            if (createdCard == null) {
                              return;
                            }

                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Card for ${createdCard.sense} created.')));

                            isSavingNewWord.value = false;
                          }))),
                  icon: Icons.add_circle_outline,
                  size: ButtonSize.big,
                  type: ButtonType.secondary))
        ]),
        'Collect',
        HeadingStyle.h1);
  }
}
