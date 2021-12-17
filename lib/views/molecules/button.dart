import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/services/app_configuration.dart';

BorderRadius _borderRadius = BorderRadius.circular(16);
const smallButtonSize = 16.0;

LinearGradient _getPrimaryGradient(BuildContext context) => LinearGradient(
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.secondary
        ],
        begin: const Alignment(0.25, 0.25),
        end: Alignment.bottomRight,
        tileMode: TileMode.clamp);

enum ButtonSize { small, standard, big }

enum ButtonType { standard, primary, secondary }

class Button extends HookConsumerWidget {
  final String label;
  final IconData? icon;
  final ButtonSize size;
  final ButtonType type;
  final Color? color;
  final VoidCallback onPressed;
  final String? shortcut;

  const Button(this.label, this.onPressed,
      {Key? key,
      this.icon,
      this.size = ButtonSize.standard,
      this.type = ButtonType.standard,
      this.color,
      this.shortcut})
      : super(key: key);

  _getButtonStyle() {
    return ElevatedButton.styleFrom(
        onPrimary: color,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: _borderRadius));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceType =
        ref.watch(appConfigurationProvider.select((value) => value.deviceType));

    final buttonContents = Container(
        width: size == ButtonSize.big ? 220 : null,
        padding: size != ButtonSize.big
            ? horizontalPadding(PaddingType.large)
            : null,
        height: 42,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                child: Icon(
                  icon,
                  size: size == ButtonSize.small ? smallButtonSize : null,
                  color: type == ButtonType.secondary ? Colors.black54 : null,
                ),
                padding: label.isNotEmpty
                    ? rightPadding(PaddingType.small)
                    : EdgeInsets.zero),
            Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: size == ButtonSize.small ? smallButtonSize : null,
                  color: type == ButtonType.secondary ? Colors.black54 : null),
            ),
            if (shortcut != null && deviceType == DeviceType.web)
              Padding(
                child: Text(
                  '[$shortcut]',
                  style: TextStyle(
                      fontSize:
                          size == ButtonSize.small ? smallButtonSize : null,
                      fontWeight: FontWeight.normal,
                      color: type == ButtonType.primary
                          ? Colors.white24
                          : Colors.black26),
                ),
                padding: leftPadding(PaddingType.small),
              )
          ],
        ));

    if (type == ButtonType.primary) {
      return ElevatedButton(
          onPressed: onPressed,
          style: _getButtonStyle(),
          child: Ink(
              decoration: BoxDecoration(
                  gradient: _getPrimaryGradient(context),
                  borderRadius: _borderRadius),
              child: buttonContents));
    }

    return TextButton(
        onPressed: onPressed, child: buttonContents, style: _getButtonStyle());
  }
}
