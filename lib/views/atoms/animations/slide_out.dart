import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kotobaten/views/organisms/practice/impression_hidden.dart';

Widget slideOut(Widget widget, Animation<double> animation, bool isFrontWidget,
    bool addOpacityAnimation) {
  final translateAnim = Tween<double>(begin: 600, end: 0).animate(animation);
  final opacityAnim = Tween<double>(begin: 0, end: 1).animate(animation);
  final applyAnimation = widget is! ImpressionHidden;

  // An additional fade animation for wider viewports
  final applyOpacityAnimation = applyAnimation && addOpacityAnimation;

  return AnimatedBuilder(
    animation: translateAnim,
    child: widget,
    builder: (context, widget) {
      return Transform(
        transform: Matrix4.translationValues(
            applyAnimation ? translateAnim.value * -1 : 0.toDouble(), 0, 0),
        child: Opacity(
            child: widget,
            opacity:
                applyOpacityAnimation ? max(0, min(1, opacityAnim.value)) : 1),
        alignment: Alignment.center,
      );
    },
  );
}
