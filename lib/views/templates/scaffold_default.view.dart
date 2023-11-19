import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:url_launcher/url_launcher.dart';

enum HelpMenuItems { about, androidApp, iosApp, help }

class HelpMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const HelpMenuItem(this.icon, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(children: [
        Padding(
            child: Icon(
              icon,
              color: getDescriptionColor(context),
            ),
            padding: rightPadding(PaddingType.large)),
        Text(label)
      ]);
}

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
            PopupMenuButton<HelpMenuItems>(
                itemBuilder: (context) => <PopupMenuEntry<HelpMenuItems>>[
                      PopupMenuItem(
                        onTap: () => launch(
                            'https://apps.apple.com/us/app/kotobaten/id1618057300'),
                        child:
                            const HelpMenuItem(Icons.apple_outlined, 'iOS app'),
                      ),
                      PopupMenuItem(
                        value: HelpMenuItems.androidApp,
                        onTap: () => launch(
                            'https://play.google.com/store/apps/details?id=janjanxyz.kotobaten&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'),
                        child: const HelpMenuItem(
                          Icons.android_outlined,
                          'Android app',
                        ),
                      ),
                      PopupMenuItem(
                        value: HelpMenuItems.androidApp,
                        onTap: () => launch(
                            'mailto:hello@kotobaten.app?subject=Kotobaten Support'),
                        child: const HelpMenuItem(
                          Icons.help_outlined,
                          'Get help',
                        ),
                      ),
                      PopupMenuItem(
                        value: HelpMenuItems.androidApp,
                        onTap: () => launch('https://kotobaten.app'),
                        child: const HelpMenuItem(
                          Icons.lightbulb_rounded,
                          'About',
                        ),
                      ),
                    ],
                icon: const Icon(Icons.help_outline_rounded)),
            IconButton(
                onPressed: () => navigationService.goSearch(context),
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () => navigationService.goSettings(context),
                tooltip: 'Settings',
                icon: const Icon(Icons.settings_outlined)),
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
