import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/models/slices/navigation/overlays_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/organisms/keyboard_map.dart';
import 'package:kotobaten/views/organisms/word_add.dart';
import 'package:kotobaten/models/slices/cards/card.dart' as card_entity;

class GlobalShortcuts extends HookConsumerWidget {
  final Widget child;
  const GlobalShortcuts(this.child, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsService = ref.read(cardsServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);
    final overlayService = ref.read(overlaysServiceProvider);

    return CallbackShortcuts(bindings: {
      const SingleActivator(LogicalKeyboardKey.keyS, control: true): () {
        navigationService.goSearch(context);
      },
      const SingleActivator(LogicalKeyboardKey.keyP, control: true): () {
        navigationService.goPractice(context);
      },
      const SingleActivator(LogicalKeyboardKey.keyC, control: true): () {
        navigationService.goCollection(context);
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
      const SingleActivator(LogicalKeyboardKey.keyH, control: true): () {
        overlayService.showOverlay(context, (_) => const KeyboardMap());
      },
    }, child: Focus(autofocus: true, child: child));
  }
}
