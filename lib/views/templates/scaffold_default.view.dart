import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';

class ScaffoldDefault extends StatelessWidget {
  final Widget child;

  const ScaffoldDefault(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryVariant,
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed(profileRoute),
                tooltip: 'Your profile',
                icon: const Icon(Icons.person_outline_rounded))
          ],
          title: SizedBox(
            height: kToolbarHeight,
            child: Padding(
                padding: verticalPadding(PaddingType.standard),
                child: const Image(
                  image: AssetImage('assets/logos/logo_wide_white.png'),
                )),
          )),
      body: child);
}
