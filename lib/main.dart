import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
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

void main() {
  runApp(const ProviderScope(child: MyApp()));

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
      theme: ThemeData(
          fontFamily: defaultFont,
          colorScheme: const ColorScheme(
              primary: Color(0xffBD0029),
              secondary: Color(0xff554562),
              onSurface: Color(0xff333333),
              background: Color(0xffffffff),
              brightness: Brightness.light,
              error: Color(0xffFFDDDD),
              onBackground: Color(0xff333333),
              onError: Color(0xff6C0000),
              onPrimary: Color(0xffffffff),
              onSecondary: Color(0xffffffff),
              primaryContainer: Color(0xff9E0022),
              secondaryContainer: Color(0xff352B3D),
              surface: Color(0xffffffff))),
      initialRoute: homeRoute,
      routes: {
        homeRoute: (_) => HomeView(),
        loginRoute: (_) => const LoginView(),
        practiceRoute: (_) => const PracticeView(),
        collectionRoute: (_) => const CollectionView(),
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
