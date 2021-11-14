import 'package:flutter/material.dart';

enum PaddingType {
  small,
  standard,
  large,
  largePlus,
  none
}

double getPadding(PaddingType type)
{
  switch (type) {
    case PaddingType.small:
      return 8;
    case PaddingType.standard:
      return 12;
    case PaddingType.large:
      return 16;
    case PaddingType.largePlus:
      return 48;
    default:
      return 0;
  }
}

EdgeInsetsGeometry topPadding(PaddingType type) => EdgeInsets.fromLTRB(0, getPadding(type), 0, 0);
EdgeInsetsGeometry bottomPadding(PaddingType type) => EdgeInsets.fromLTRB(0, 0, 0, getPadding(type));
EdgeInsetsGeometry leftPadding(PaddingType type) => EdgeInsets.fromLTRB(getPadding(type), 0, 0, 0);
EdgeInsetsGeometry rightPadding(PaddingType type) => EdgeInsets.fromLTRB(0, 0, getPadding(type), 0);