import 'package:flutter/material.dart';

const double minimumDesktopSize = 1210;
const double initialDesktopSize = 1240;

bool isDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width >= minimumDesktopSize;
}
