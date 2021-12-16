import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/views/molecules/consistency_bar_painter.dart';

class ConsistencyBar extends StatelessWidget {
  final double consistency;

  const ConsistencyBar(this.consistency, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 12,
        child: CustomPaint(
          size: Size.infinite,
          painter: ConsistencyBarPainter(
              placeholderBackroundColor(
                  Theme.of(context).scaffoldBackgroundColor),
              successColor,
              consistency),
        ));
  }
}
