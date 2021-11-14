import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/consts/fonts.dart';

class DescriptionRichText extends StatelessWidget {
  final List<TextSpan> spans;

  const DescriptionRichText(this.spans, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RichText(
        text: TextSpan(
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontFamily: defaultFont),
            children: spans),
      );
}
