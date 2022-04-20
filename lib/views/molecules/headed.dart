import 'package:flutter/cupertino.dart';
import 'package:kotobaten/views/atoms/heading.dart';

class Headed extends StatelessWidget {
  final Widget widget;
  final String heading;
  final HeadingStyle headingStyle;
  final bool showHeading;

  const Headed(this.widget, this.heading, this.headingStyle,
      {Key? key, this.showHeading = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [if (showHeading) Heading(heading, headingStyle), widget],
      );
}
