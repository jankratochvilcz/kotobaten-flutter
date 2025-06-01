import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';

RoundedRectangleBorder getAlertDialogBorder(BuildContext context) {
  return RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      side: BorderSide(color: getBorderColor(context), width: 2.0));
}
