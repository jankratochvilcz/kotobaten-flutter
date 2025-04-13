import 'package:flutter/material.dart';
import 'package:kotobaten/consts/fonts.dart';

class DescriptionRichText extends StatelessWidget {
  final List<TextSpan> spans;
  final TextAlign textAlign;
  final double maxWidth;

  const DescriptionRichText(this.spans,
      {Key? key, this.textAlign = TextAlign.start, this.maxWidth = 600})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: RichText(
          textAlign: textAlign,
          text: TextSpan(
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontFamily: defaultFont),
              children: spans),
        ),
      );
}
