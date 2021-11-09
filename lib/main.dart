import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/views/screens/login.view.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      title: 'Kotobaten',
      home: Scaffold(
        body: LoginView()
      ),
    ));
  }
}
