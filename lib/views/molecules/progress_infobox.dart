import 'package:flutter/cupertino.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/heading.dart';

class ProgressInfobox extends StatelessWidget {
  final String heading;
  final int current;
  final int goal;
  final Color color;

  const ProgressInfobox(this.heading, this.color, this.goal, this.current,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: horizontalPadding(PaddingType.standard),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                current.toString(),
                style: TextStyle(color: color, fontSize: 24),
              ),
              Text(' /$goal', style: TextStyle(color: color)),
            ],
          ),
          Padding(
              padding: topPadding(PaddingType.extraSmall),
              child: Heading(heading, HeadingStyle.h3)),
        ],
      ));
}
