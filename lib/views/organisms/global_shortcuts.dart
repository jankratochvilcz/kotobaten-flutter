import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/models/slices/navigation/overlays_service.dart';
import 'package:kotobaten/views/organisms/search/universal_search_v3.dart';
import 'package:kotobaten/views/organisms/word_add.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;

class GlobalShortcuts extends HookConsumerWidget {
  final Widget child;
  const GlobalShortcuts(this.child, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overlaysService = ref.read(overlaysServiceProvider);
    final cardsService = ref.read(cardsServiceProvider);

    return CallbackShortcuts(bindings: {
      const SingleActivator(LogicalKeyboardKey.keyP, control: true): () {
        overlaysService.showOverlay(
            context,
            (context) => SizedBox.fromSize(
                  size: const Size(600, 800),
                  child: const UniversalSearchV3(),
                ));
      },
      const SingleActivator(LogicalKeyboardKey.keyA, control: true): () {
        showWordAddBottomSheet(context, ref, (card) async {
          if (card is card_entity.CardNew) {
            return await cardsService.createCard(card);
          }

          if (card is card_entity.CardInitialized) {
            return await cardsService.editCard(card);
          }

          throw UnsupportedError(
              'Action only supported for new and initialized cards');
        });
      },
    }, child: Focus(autofocus: true, child: child));
  }
}
