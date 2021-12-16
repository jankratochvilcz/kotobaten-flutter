import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/fonts.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/views/screens/collection.view.dart';
import 'package:kotobaten/views/screens/home.view.dart';
import 'package:kotobaten/views/screens/login.view.dart';
import 'package:kotobaten/views/screens/practice.view.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              primaryVariant: Color(0xff9E0022),
              secondaryVariant: Color(0xff352B3D),
              surface: Color(0xffffffff))),
      initialRoute: homeRoute,
      routes: {
        homeRoute: (_) => HomeView(),
        loginRoute: (_) => const LoginView(),
        practiceRoute: (_) => const PracticeView(),
        collectionRoute: (_) => const CollectionView()
      },
    ));
  }
}
