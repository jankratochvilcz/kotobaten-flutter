import 'package:flutter/material.dart';

class DesktopCard extends StatelessWidget {
  final Widget child;

  const DesktopCard(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 400,
        height: 200,
        child: child,
      );
}
