import 'package:flutter/material.dart';

enum PaddingType {
  xSmall,
  small,
  standard,
  large,
  xLarge,
  xxLarge,
  xxxLarge,
  none
}

double getPadding(PaddingType type) {
  switch (type) {
    case PaddingType.xSmall:
      return 2;
    case PaddingType.small:
      return 8;
    case PaddingType.standard:
      return 12;
    case PaddingType.large:
      return 16;
    case PaddingType.xLarge:
      return 32;
    case PaddingType.xxLarge:
      return 64;
    case PaddingType.xxxLarge:
      return 96;
    default:
      return 0;
  }
}

EdgeInsetsGeometry topPadding(PaddingType type) =>
    EdgeInsets.fromLTRB(0, getPadding(type), 0, 0);

EdgeInsetsGeometry bottomPadding(PaddingType type) =>
    EdgeInsets.fromLTRB(0, 0, 0, getPadding(type));

EdgeInsetsGeometry leftPadding(PaddingType type) =>
    EdgeInsets.fromLTRB(getPadding(type), 0, 0, 0);

EdgeInsetsGeometry rightPadding(PaddingType type) =>
    EdgeInsets.fromLTRB(0, 0, getPadding(type), 0);

EdgeInsetsGeometry allPadding(PaddingType type) => EdgeInsets.fromLTRB(
    getPadding(type), getPadding(type), getPadding(type), getPadding(type));

EdgeInsetsGeometry horizontalPadding(PaddingType type) =>
    EdgeInsets.fromLTRB(getPadding(type), 0, getPadding(type), 0);

EdgeInsetsGeometry verticalPadding(PaddingType type) =>
    EdgeInsets.fromLTRB(0, getPadding(type), 0, getPadding(type));
