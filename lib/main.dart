import 'package:bitsdojo_window_v3/bitsdojo_window_v3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/fonts.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/screens/collection.view.dart';
import 'package:kotobaten/views/screens/home.view.dart';
import 'package:kotobaten/views/screens/login.view.dart';
import 'package:kotobaten/views/screens/onboarding.view.dart';
import 'package:kotobaten/views/screens/post_practice.view.dart';
import 'package:kotobaten/views/screens/practice.view.dart';
import 'package:kotobaten/views/screens/search.view.dart';
import 'package:kotobaten/views/screens/settings.view.dart';
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
    appRunner: () => runApp(const ProviderScope(child: MyApp())),
  );

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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kotobaten',
      darkTheme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.dark,
          fontFamily: defaultFont,
          colorScheme: const ColorScheme(
              primary: Color(0xffBD0029),
              secondary: Color(0xff554562),
              onSurface: Color.fromARGB(255, 195, 195, 195),
              background: Color.fromARGB(255, 31, 31, 31),
              brightness: Brightness.dark,
              error: Color(0xffFFDDDD),
              onBackground: Color(0xff333333),
              onError: Color(0xff6C0000),
              onPrimary: Color(0xffffffff),
              onSecondary: Color(0xffffffff),
              primaryContainer: Color(0xff9E0022),
              secondaryContainer: Color(0xff352B3D),
              surface: Colors.black)),
      theme: ThemeData(
          useMaterial3: false,
          fontFamily: defaultFont,
          colorScheme: const ColorScheme(
              primary: Color(0xffBD0029),
              secondary: Color(0xff554562),
              onSurface: Color(0xff333333),
              background: Color.fromARGB(255, 244, 244, 244),
              brightness: Brightness.light,
              error: Color(0xffFFDDDD),
              onBackground: Color(0xff333333),
              onError: Color(0xff6C0000),
              onPrimary: Color.fromARGB(255, 255, 255, 255),
              onSecondary: Color.fromARGB(255, 0, 0, 0),
              primaryContainer: Color(0xff9E0022),
              secondaryContainer: Color(0xff352B3D),
              surface: Color(0xffffffff))),
      initialRoute: homeRoute,
      themeMode: ThemeMode.system,
      routes: {
        homeRoute: (_) => HomeView(),
        loginRoute: (_) => const LoginView(),
        practiceRoute: (_) => const PracticeView(),
        collectionRoute: (_) => CollectionView(),
        searchRoute: (_) => const SearchView(),
        settingsRoute: (_) => const SettingsView(),
        onboardingRoute: (_) => const OnboardingView(),
        postPracticeRoute: (_) => const PostPracticeView()
      },
      builder: (context, widget) => widget != null
          ? WindowBorder(child: widget, color: const Color(0xff9E0022))
          : const Empty(),
    ));
  }
}
