import 'package:bitsdojo_window_v3/bitsdojo_window_v3.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/services/app_configuration.dart';

class WindowingAppBar extends HookConsumerWidget
    implements PreferredSizeWidget {
  const WindowingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final configurationService = ref.watch(appConfigurationServiceProvider);
    final configuration = configurationService.getConfiguration();

    if (configuration.platform == Platform.windows) {
      return AppBar(
          iconTheme: IconThemeData(color: getDescriptionColorSubtle(context)),
          backgroundColor: Theme.of(context).colorScheme.background,
          elevation: 0,
          actions: [
            MinimizeWindowButton(colors: windowButtonColorsPractice),
            MaximizeWindowButton(colors: windowButtonColorsPractice),
            CloseWindowButton(colors: closeWindowButtonPractice)
          ],
          title: Table(columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth()
          }, children: [
            TableRow(children: [
              SizedBox(
                  height: kToolbarHeight,
                  child: WindowTitleBarBox(child: MoveWindow()))
            ])
          ]));
    }

    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: getDescriptionColorSubtle(context)),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
