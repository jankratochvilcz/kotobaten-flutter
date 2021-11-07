import 'package:flutter/material.dart';
import 'package:kotobaten/views/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      title: 'Kotobaten',
      home: Scaffold(
        body: LoginScreen()
      ),
    ));
  }
}
