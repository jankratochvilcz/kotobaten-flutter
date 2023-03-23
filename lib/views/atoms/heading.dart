import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';

enum HeadingStyle { h1, h2, h3 }

double _getFontSize(HeadingStyle style) {
  switch (style) {
    case HeadingStyle.h1:
      return 36;
    case HeadingStyle.h2:
      return 24;
    default:
      return 14;
  }
}

FontWeight _getFontWeight(HeadingStyle style) {
  switch (style) {
    case HeadingStyle.h1:
      return FontWeight.w700;
    case HeadingStyle.h2:
      return FontWeight.w700;
    case HeadingStyle.h3:
      return FontWeight.w700;
    default:
      return FontWeight.w400;
  }
}

Color? _getColor(HeadingStyle style) {
  switch (style) {
    case HeadingStyle.h3:
      return descriptionColor;
    default:
      return null;
  }
}

EdgeInsetsGeometry _getBottomPadding(HeadingStyle style) {
  switch (style) {
    case HeadingStyle.h1:
      return bottomPadding(PaddingType.large);
    case HeadingStyle.h2:
      return bottomPadding(PaddingType.small);
    default:
      return bottomPadding(PaddingType.none);
  }
}

class Heading extends StatelessWidget {
  final String data;
  final HeadingStyle style;
  final TextAlign? textAlign;
  final bool noPadding;
  final double? fontSizeOverride;
  final FontWeight? fontWeightOverride;

  const Heading(this.data, this.style,
      {Key? key,
      this.textAlign,
      this.noPadding = false,
      this.fontSizeOverride,
      this.fontWeightOverride})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      child: Text(
        data,
        textAlign: textAlign,
        style: TextStyle(
            color: _getColor(style),
            fontSize: fontSizeOverride ?? _getFontSize(style),
            fontWeight: fontWeightOverride ?? _getFontWeight(style)),
      ),
      padding: noPadding ? EdgeInsets.zero : _getBottomPadding(style));
}
