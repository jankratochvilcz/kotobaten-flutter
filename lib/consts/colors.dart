import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/extensions/color.dart';

Color monthlyProgressColor(BuildContext context) =>
    Theme.of(context).colorScheme.secondary.darken(0.05);
Color weeklyProgressColor(BuildContext context) =>
    Theme.of(context).colorScheme.secondary.lighten(0.1);
Color dailyProgressColor(BuildContext context) =>
    Theme.of(context).colorScheme.secondary.lighten(0.3);

Color successColor = Colors.amber.shade500;

Color placeholderBackroundColor(Color color) => color.darken(0.03);

Color descriptionColor = Colors.black54;

final windowButtonColors = WindowButtonColors(
    iconNormal: Colors.white54,
    iconMouseOver: Colors.white,
    iconMouseDown: Colors.white,
    mouseOver: const Color(0xff9E0022),
    mouseDown: const Color(0xff9E0022));

final closeWindowButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: Colors.white,
    iconMouseOver: Colors.white);
