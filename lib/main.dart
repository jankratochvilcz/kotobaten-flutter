import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/app_router.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/fonts.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'dart:io' as io show Platform;

import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://f944317b3775472f984911eb1744028c@o278485.ingest.sentry.io/4506365359489024';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(ProviderScope(child: MyApp())),
  );

  // Uncomment the following lines to enable debug logging for focus management
  // FocusManager.instance.addListener(() {
  //   debugPrint(
  //       'Primary focus: ${FocusManager.instance.primaryFocus?.debugLabel}');
  // });

  try {
    if (io.Platform.isWindows) {
      doWhenWindowReady(() {
        final window = appWindow;

        const initialSize = Size(initialDesktopSize, 760);
        window.minSize = const Size(400, 500);
        window.size = initialSize;
        window.alignment = Alignment.center;

        window.show();
      });
    }
  } catch (e) {
    // The library currently throws on non-Windows machines
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);

    return (MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Kotobaten',
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: defaultFont,
          colorScheme: ColorScheme(
              primary: primaryColor,
              secondary: secondaryColor,
              onSurface: darkSurfaceTextColor,
              background: darkBackgroundColor,
              brightness: Brightness.dark,
              error: errorBackgroundColor,
              onBackground: darkOnBackgroundColor,
              onError: errorTextColor,
              onPrimary: darkOnPrimaryColor,
              onSecondary: darkOnSecondaryColor,
              primaryContainer: primaryColor,
              secondaryContainer: secondaryColor.withValues(alpha: 0.8),
              surface: darkSurfaceColor)),
      theme: ThemeData(
          fontFamily: defaultFont,
          colorScheme: ColorScheme(
              primary: primaryColor,
              secondary: secondaryColor,
              onSurface: textPrimary,
              background: backgroundColor,
              brightness: Brightness.light,
              error: errorBackgroundColor,
              onBackground: textPrimary,
              onError: errorTextColor,
              onPrimary: Colors.white,
              onSecondary: Colors.white,
              primaryContainer: primaryColor,
              secondaryContainer: secondaryColor,
              surface: lightSurfaceColor)),
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
      builder: (context, widget) => widget != null
          ? WindowBorder(child: widget, color: primaryColor)
          : const Empty(),
    ));
  }
}
