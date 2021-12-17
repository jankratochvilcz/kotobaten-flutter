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
