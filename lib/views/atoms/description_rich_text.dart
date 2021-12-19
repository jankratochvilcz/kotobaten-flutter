import 'package:flutter/material.dart';
import 'package:kotobaten/consts/fonts.dart';

class DescriptionRichText extends StatelessWidget {
  final List<TextSpan> spans;
  final TextAlign textAlign;

  const DescriptionRichText(this.spans,
      {Key? key, this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) => RichText(
        textAlign: textAlign,
        text: TextSpan(
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontFamily: defaultFont),
            children: spans),
      );
}
