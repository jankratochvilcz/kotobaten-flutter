import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/extensions/color.dart';

Color monthlyProgressColor(BuildContext context) =>
    Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).colorScheme.secondary.darken(0.05)
        : Theme.of(context).colorScheme.secondary.lighten(0.3);
Color weeklyProgressColor(BuildContext context) =>
    Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).colorScheme.secondary.lighten(0.1)
        : Theme.of(context).colorScheme.secondary.lighten(0.4);
Color dailyProgressColor(BuildContext context) =>
    Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).colorScheme.secondary.lighten(0.3)
        : Theme.of(context).colorScheme.secondary.lighten(0.5);

Color primaryColor = const Color(0xff6F508A);
Color secondaryColor = const Color(0xff4E7FDA);
Color successColor = Colors.amber.shade500;
Color errorColor = Colors.red.shade500;
Color backgroundColor = const Color(0xFFFAFAFA);

Color placeholderBackroundColor(Color color) => color.darken(0.03);

Color descriptionColorLightTheme = Colors.black54;
Color descriptionColorDarkTheme = Colors.white54;

Color getDescriptionColor(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? descriptionColorLightTheme
      : descriptionColorDarkTheme;
}

Color getDescriptionColorSubtle(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? Colors.black26
      : Colors.white24;
}

Color getBorderColor(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? Colors.black12
      : Colors.white12;
}

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
