import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/services/app_configuration.dart';
import 'package:kotobaten/views/atoms/empty.dart';

class WindowingAppBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const WindowingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final configurationService = ref.watch(appConfigurationServiceProvider);
    final configuration = configurationService.getConfiguration();

    if (configuration.platform == Platform.windows) {
      return SizedBox(
          height: 24,
          child: Table(columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(),
            1: IntrinsicColumnWidth(),
            2: IntrinsicColumnWidth(),
            3: IntrinsicColumnWidth()
          }, children: [
            TableRow(children: [
              SizedBox(
                  height: kToolbarHeight,
                  child: WindowTitleBarBox(child: MoveWindow())),
              MinimizeWindowButton(colors: windowButtonColors),
              MaximizeWindowButton(colors: windowButtonColors),
              CloseWindowButton(colors: closeWindowButtonColors)
            ])
          ]));
    }

    return const Empty();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
