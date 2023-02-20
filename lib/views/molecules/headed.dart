import 'package:flutter/cupertino.dart';

class Headed extends StatelessWidget {
  final Widget widget;
  final Widget heading;
  final bool showHeading;

  const Headed(this.widget, this.heading, {Key? key, this.showHeading = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [if (showHeading) heading, widget],
      );
}
