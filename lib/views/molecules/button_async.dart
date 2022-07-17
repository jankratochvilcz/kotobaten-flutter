import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'button.dart';

class ButtonAsync extends HookWidget {
  final String label;
  final IconData? icon;
  final ButtonSize size;
  final ButtonType type;
  final Color? color;
  final Future? Function() onPressed;
  final String? shortcut;
  final bool overrideIsInProgress;

  const ButtonAsync(this.label, this.onPressed,
      {Key? key,
      this.icon,
      this.size = ButtonSize.standard,
      this.type = ButtonType.standard,
      this.color,
      this.shortcut,
      this.overrideIsInProgress = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isActionInProgress = useState(false);

    onSubmit() async {
      isActionInProgress.value = true;
      await onPressed();
      isActionInProgress.value = false;
    }

    return Button(
      label,
      isActionInProgress.value ? null : onSubmit,
      icon: overrideIsInProgress || isActionInProgress.value ? null : icon,
      iconWidget: overrideIsInProgress || isActionInProgress.value
          ? const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
              child: SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.black26,
                  )))
          : null,
      size: size,
      type: type,
      color: color,
      shortcut: shortcut,
    );
  }
}
