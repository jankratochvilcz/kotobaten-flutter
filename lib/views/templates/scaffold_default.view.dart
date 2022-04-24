import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/organisms/profile.view.dart';

class ScaffoldDefault extends HookConsumerWidget {
  final Widget child;
  final FloatingActionButton? floatingActionButton;

  const ScaffoldDefault(this.child, {Key? key, this.floatingActionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationService = ref.read(navigationServiceProvider);

    return Scaffold(
        floatingActionButton: floatingActionButton,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          actions: [
            IconButton(
                onPressed: () => navigationService.goSearch(context),
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () => showProfileBottomSheet(context),
                tooltip: 'Your profile',
                icon: const Icon(Icons.more_horiz_rounded)),
            if (!kIsWeb && Platform.isWindows)
              Padding(
                  padding: leftPadding(PaddingType.xxLarge),
                  child: MinimizeWindowButton(colors: windowButtonColors)),
            if (!kIsWeb && Platform.isWindows)
              MaximizeWindowButton(colors: windowButtonColors),
            if (!kIsWeb && Platform.isWindows)
              CloseWindowButton(colors: closeWindowButtonColors)
          ],
          title: Table(columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth()
          }, children: [
            TableRow(children: [
              const SizedBox(
                  height: kToolbarHeight,
                  width: 140,
                  child: Image(
                    image: AssetImage('assets/logos/logo_wide_white.png'),
                  )),
              if (!kIsWeb && Platform.isWindows)
                SizedBox(
                    height: kToolbarHeight,
                    child: WindowTitleBarBox(child: MoveWindow()))
            ])
          ]),
        ),
        body: child);
  }
}
