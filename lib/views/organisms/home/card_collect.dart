import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/datetime.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class CardCollect extends ConsumerWidget {
  const CardCollect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);
    final cardsService = ref.watch(cardsServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);

    if (userModel is! UserModelInitialized) {
      return const Empty();
    }

    return Headed(
        Column(children: [
          DescriptionRichText(
            [
              const TextSpan(text: 'You added '),
              TextSpan(
                  text:
                      '${userModel.user.stats.addedWeek > 0 ? userModel.user.stats.addedWeek.toString() : 'no'} words',
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              const TextSpan(text: ' this week.')
            ],
          ),
          if (userModel.user.stats.nextToDiscoverCreated != null)
            Padding(
                padding: topPadding(PaddingType.standard),
                child: DescriptionRichText(
                  [
                    const TextSpan(text: 'You\'re learning words from '),
                    TextSpan(
                        text: userModel.user.stats.nextToDiscoverCreated
                            ?.getRelativeToNowString(DateTime.now()),
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                    const TextSpan(text: '.')
                  ],
                )),
          Padding(
              padding: topPadding(PaddingType.large),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Button(
                  'View all',
                  () => navigationService.goCollection(context),
                  icon: Icons.inbox_outlined,
                  type: ButtonType.secondary,
                ),
                Button(
                    'Add word',
                    () => showWordAddBottomSheet(context, (card) async {
                          if (card is card_entity.CardNew) {
                            return await cardsService.createCard(card);
                          }

                          if (card is card_entity.CardInitialized) {
                            return await cardsService.editCard(card);
                          }

                          throw UnsupportedError(
                              'Action only supported for new and initialized cards');
                        }),
                    icon: Icons.move_to_inbox_outlined,
                    type: ButtonType.standard)
              ]))
        ]),
        'Collect',
        HeadingStyle.h1);
  }
}
