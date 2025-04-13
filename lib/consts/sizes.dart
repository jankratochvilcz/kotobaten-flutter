import 'package:flutter/material.dart';

const double minimumDesktopSize = 1210;
const double initialDesktopSize = 1240;
const double minimumCardHeight = 120.0;

const double textSizeSmall = 12;
const double textSizeExtraSmall = 8;

bool isDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width >= minimumDesktopSize;
}
