import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/views/atoms/empty.dart';

class WindowingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WindowingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => !kIsWeb && Platform.isWindows
      ? AppBar(
          iconTheme: const IconThemeData(color: Colors.black26),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          actions: [
            if (!kIsWeb && Platform.isWindows)
              MinimizeWindowButton(colors: windowButtonColorsPractice),
            if (!kIsWeb && Platform.isWindows)
              MaximizeWindowButton(colors: windowButtonColorsPractice),
            if (!kIsWeb && Platform.isWindows)
              CloseWindowButton(colors: closeWindowButtonPractice)
          ],
          title: Table(columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth()
          }, children: [
            TableRow(children: [
              if (!kIsWeb && Platform.isWindows)
                SizedBox(
                    height: kToolbarHeight,
                    child: WindowTitleBarBox(child: MoveWindow()))
            ])
          ]))
      : const Empty();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
