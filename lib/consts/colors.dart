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

// Japanese-inspired Color Palette
// App-wide ad-hoc colors
const Color errorBackgroundColor = Color(0xffFFDDDD);
const Color errorTextColor = Color(0xff6C0000);
const Color darkSurfaceTextColor = Color.fromARGB(255, 195, 195, 195);
const Color darkBackgroundColor = Color.fromARGB(255, 25, 25, 25);
const Color darkOnBackgroundColor = Color(0xff333333);
const Color whiteColor = Color(0xffffffff);
const Color darkOnPrimaryColor = whiteColor;
const Color darkOnSecondaryColor = whiteColor;
const Color lightSurfaceColor = whiteColor;
const Color blackColor = Color(0xff000000);
const Color darkSurfaceColor = blackColor;
Color primaryColor = const Color(0xffC41E3A); // Deep Japanese Red
Color secondaryColor = const Color(0xffA11729); // Darker red variant
Color successColor = const Color(0xFFFFC107); // Material amber 500
Color errorColor = const Color(0xFFF44336); // Material red 500
Color backgroundColor = const Color(0xFFF8F9FA); // Light background

// Additional palette colors
Color textPrimary = const Color(0xff2C3E50);
Color textSecondary = const Color(0xff5A6C7D);
Color borderColor = const Color(0xffE1E8ED);

Color placeholderBackroundColor(Color color) => color.darken(0.03);

Color descriptionColorLightTheme = textSecondary;
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
      ? borderColor.withValues(alpha: 0.3)
      : Colors.white12;
}

final windowButtonColors = WindowButtonColors(
    iconNormal: Colors.white54,
    iconMouseOver: Colors.white,
    iconMouseDown: Colors.white,
    mouseOver: primaryColor,
    mouseDown: primaryColor);

final closeWindowButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: Colors.white,
    iconMouseOver: Colors.white);
