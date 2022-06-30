import 'dart:math';

import 'package:flutter/material.dart';

// Largely copied from https://medium.com/flutter-community/flutter-flip-card-animation-eb25c403f371
Widget flip(Widget widget, Animation<double> animation, bool isFrontWidget) {
  final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
  return AnimatedBuilder(
    animation: rotateAnim,
    child: widget,
    builder: (context, widget) {
      final isUnder = isFrontWidget;
      var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
      tilt *= isUnder ? -1.0 : 1.0;
      final value = isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
      return Transform(
        transform: (Matrix4.rotationY(value)..setEntry(3, 0, tilt)),
        child: widget,
        alignment: Alignment.center,
      );
    },
  );
}
