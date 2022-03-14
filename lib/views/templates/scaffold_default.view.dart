import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/views/organisms/goal_rings.dart';
import 'package:kotobaten/views/organisms/profile.view.dart';

class ScaffoldDefault extends HookConsumerWidget {
  final Widget child;
  final FloatingActionButton? floatingActionButton;

  const ScaffoldDefault(this.child, {Key? key, this.floatingActionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushNamed(searchRoute),
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () => showProfileBottomSheet(context),
              tooltip: 'Your profile',
              icon: GoalRings(Theme.of(context).colorScheme.primaryContainer)),
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
