import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/services/app_configuration.dart';

import '../../extensions/platform.dart';

BorderRadius _borderRadius = BorderRadius.circular(16);
const smallButtonSize = 12.0;

LinearGradient _getPrimaryGradient(BuildContext context) => LinearGradient(
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.secondary
        ],
        begin: const Alignment(0.25, 0.25),
        end: Alignment.bottomRight,
        tileMode: TileMode.clamp);

LinearGradient _getPrimaryProgressGradient(
        BuildContext context, double percentage) =>
    LinearGradient(colors: [
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.secondary
    ], stops: [
      0,
      percentage,
      percentage + 0.15,
      1
    ], tileMode: TileMode.clamp, transform: const GradientRotation(0.5));

LinearGradient _getStandardProgressGradient(
    BuildContext context, double percentage) {
  var gradientColor = Theme.of(context).brightness == Brightness.light
      ? Colors.black12
      : Colors.white12;
  return LinearGradient(colors: [
    gradientColor,
    gradientColor,
    Colors.transparent,
    Colors.transparent
  ], stops: [
    0,
    percentage,
    percentage + 0.15,
    1
  ], tileMode: TileMode.clamp, transform: const GradientRotation(0.5));
}

enum ButtonSize { small, standard, big }

enum ButtonType {
  standard,
  primary,
  secondary,
  primaryProgress,
  standardProgress,
  danger
}

class Button extends ConsumerWidget {
  final String label;
  final IconData? icon;
  final Widget? iconWidget;
  final ButtonSize size;
  final ButtonType type;
  final VoidCallback? onPressed;
  final String? shortcut;
  final double? progressPercentage;
  final bool noPadding;
  final Color? color;

  const Button(this.label, this.onPressed,
      {Key? key,
      this.icon,
      this.size = ButtonSize.standard,
      this.type = ButtonType.standard,
      this.iconWidget,
      this.shortcut,
      this.progressPercentage,
      this.color,
      this.noPadding = false})
      : super(key: key);

  _getButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: _borderRadius));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platform =
        ref.watch(appConfigurationProvider.select((value) => value.platform));

    final secondaryForeground = Theme.of(context).colorScheme.onSecondary;

    var shortcutForegroundLight =
        type == ButtonType.primary ? Colors.white24 : Colors.black26;

    var shortcutForegroundDark =
        type == ButtonType.primary ? Colors.white24 : Colors.white38;

    var shortcutColor = Theme.of(context).brightness == Brightness.light
        ? shortcutForegroundLight
        : shortcutForegroundDark;

    final buttonContents = Container(
        width: size == ButtonSize.big ? 220 : null,
        padding: size != ButtonSize.big && !noPadding
            ? horizontalPadding(PaddingType.large)
            : null,
        height: 42,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                child: iconWidget ??
                    (icon != null
                        ? Icon(
                            icon,
                            size: size == ButtonSize.small
                                ? smallButtonSize
                                : null,
                            color: type == ButtonType.secondary
                                ? secondaryForeground
                                : null,
                          )
                        : null),
                padding: label.isNotEmpty
                    ? rightPadding(PaddingType.small)
                    : EdgeInsets.zero),
            Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: size == ButtonSize.small ? smallButtonSize : null,
                  color: type == ButtonType.secondary
                      ? secondaryForeground
                      : null),
            ),
            if (shortcut != null &&
                platform.toDeviceType() == DeviceType.desktop)
              Padding(
                child: Text(
                  '[$shortcut]',
                  style: TextStyle(
                      fontSize:
                          size == ButtonSize.small ? smallButtonSize : null,
                      fontWeight: FontWeight.w400,
                      color: shortcutColor),
                ),
                padding: leftPadding(PaddingType.small),
              )
          ],
        ));

    if (type == ButtonType.primary) {
      return ElevatedButton(
          onPressed: onPressed,
          style: _getButtonStyle(context),
          child: Ink(
              decoration: BoxDecoration(
                  gradient: _getPrimaryGradient(context),
                  borderRadius: _borderRadius),
              child: buttonContents));
    }

    if (type == ButtonType.primaryProgress && progressPercentage != null) {
      return ElevatedButton(
          onPressed: onPressed,
          style: _getButtonStyle(context),
          child: Ink(
              decoration: BoxDecoration(
                  gradient:
                      _getPrimaryProgressGradient(context, progressPercentage!),
                  borderRadius: _borderRadius),
              child: buttonContents));
    }

    if (type == ButtonType.standardProgress && progressPercentage != null) {
      return TextButton(
          onPressed: onPressed,
          style: _getButtonStyle(context),
          child: Ink(
              decoration: BoxDecoration(
                  gradient: _getStandardProgressGradient(
                      context, progressPercentage!),
                  borderRadius: _borderRadius),
              child: buttonContents));
    }

    if (type == ButtonType.danger) {
      return TextButton(
        onPressed: onPressed,
        child: buttonContents,
        style:
            ButtonStyle(foregroundColor: MaterialStatePropertyAll(errorColor)),
      );
    }

    return TextButton(
        onPressed: onPressed,
        child: buttonContents,
        style: ButtonStyle(foregroundColor: MaterialStatePropertyAll(color)));
  }
}
