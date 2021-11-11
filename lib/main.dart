import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/views/screens/home.view.dart';
import 'package:kotobaten/views/screens/login.view.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Kotobaten',
      initialRoute: homeRoute,
      routes: {
        homeRoute: (_) => const HomeView(),
        loginRoute: (_) => const LoginView()
      },
    ));
  }
}
