import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';

BorderRadius _borderRadius = BorderRadius.circular(16);
ButtonStyle _noPaddingWithRadiusStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: _borderRadius));

LinearGradient _getPrimaryGradient(BuildContext context) => LinearGradient(
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.secondary
        ],
        begin: const Alignment(0.25, 0.25),
        end: Alignment.bottomRight,
        tileMode: TileMode.clamp);

enum ButtonSize { standard, big }

enum ButtonType { standard, primary, secondary }

class Button extends StatelessWidget {
  final String label;
  final IconData? icon;
  final ButtonSize size;
  final ButtonType type;

  const Button(this.label,
      {Key? key,
      this.icon,
      this.size = ButtonSize.standard,
      this.type = ButtonType.standard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonContents = Container(
        width: 220,
        height: 42,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                child: Icon(icon), padding: rightPadding(PaddingType.small)),
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w900),
            )
          ],
        ));

    if (type == ButtonType.primary) {
      return ElevatedButton(
          onPressed: () => {},
          style: _noPaddingWithRadiusStyle,
          child: Ink(
              decoration: BoxDecoration(
                  gradient: _getPrimaryGradient(context),
                  borderRadius: _borderRadius),
              child: buttonContents));
    }

    return TextButton(onPressed: () => {}, child: buttonContents, style: _noPaddingWithRadiusStyle);
  }
}
