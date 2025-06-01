import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/shapes.dart';
import 'package:kotobaten/models/slices/navigation/overlays_repository.dart';
import 'package:kotobaten/views/atoms/alert_dialog_border.dart';

final overlaysServiceProvider = Provider<OverlaysService>(
    (ref) => OverlaysService(ref.read(overlaysRepositoryProvider.notifier)));

class OverlaysService {
  final OverlaysRepository _repository;

  OverlaysService(this._repository);

  Future showOverlay(BuildContext context,
      Widget Function(BuildContext context) builder) async {
    final overlayHandle = MediaQuery.of(context).size.width < 600
        ? showModalBottomSheet(
            backgroundColor: Theme.of(context).colorScheme.background,
            context: context,
            isScrollControlled: true,
            shape: defaultBottomSheetShape,
            builder: (context) => Padding(
                  padding: allPadding(PaddingType.standard),
                  child: builder(context),
                ))
        : showDialog(
            context: context,
            builder: (localContext) => AlertDialog(
                content: builder(localContext),
                shape: getAlertDialogBorder(context)));

    _repository.increment();

    await overlayHandle;

    _repository.decrement();
  }
}
