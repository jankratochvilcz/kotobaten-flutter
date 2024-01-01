import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/cards/cards_service.dart';
import 'package:kotobaten/views/organisms/word_add.dart';

class FabCollection extends ConsumerWidget {
  const FabCollection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardsService = ref.read(cardsServiceProvider);

    return FloatingActionButton.extended(
        label: const Text('Add word'),
        icon: const Icon(Icons.move_to_inbox_outlined),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        onPressed: () => showWordAddBottomSheet(context, (card) async {
              if (card is CardNew) {
                return await cardsService.createCard(card);
              } else if (card is CardInitialized) {
                return await cardsService.editCard(card);
              }

              throw UnsupportedError(
                  'Card needs to be either new or initialized');
            }));
  }
}
