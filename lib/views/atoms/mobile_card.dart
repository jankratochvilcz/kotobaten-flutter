import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';

class MobileCard extends StatelessWidget {
  final Widget child;

  const MobileCard(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: verticalPadding(PaddingType.xLarge),
        child: child,
      );
}
