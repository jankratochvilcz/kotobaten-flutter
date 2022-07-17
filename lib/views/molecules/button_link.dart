import 'package:flutter/material.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  final String uri;

  final String label;
  final IconData? icon;
  final Widget? iconWidget;
  final ButtonSize size;
  final ButtonType type;
  final Color? color;
  final String? shortcut;
  final double? progressPercentage;
  final bool noPadding;

  const ButtonLink(this.uri, this.label,
      {Key? key,
      this.icon,
      this.size = ButtonSize.standard,
      this.type = ButtonType.standard,
      this.iconWidget,
      this.color,
      this.shortcut,
      this.progressPercentage,
      this.noPadding = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Button(
        label,
        () async {
          try {
            await launch(uri);
          } catch (e) {
            await launch(uri);
          }
        },
        icon: icon,
        iconWidget: iconWidget,
        size: size,
        type: type,
        color: color,
        shortcut: shortcut,
        progressPercentage: progressPercentage,
        noPadding: noPadding,
      );
}
