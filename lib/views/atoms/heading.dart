import 'package:flutter/cupertino.dart';
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

  const Heading(this.data, this.style, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      child: Text(
        data,
        style: TextStyle(fontSize: _getFontSize(style), fontWeight: FontWeight.bold),
      ),
      padding: _getBottomPadding(style));
}
