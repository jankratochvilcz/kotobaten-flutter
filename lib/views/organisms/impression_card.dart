import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/views/atoms/heading.dart';

class ImpressionCard extends StatelessWidget {
  final String text;

  const ImpressionCard(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: allPadding(PaddingType.largePlus),
        child: Center(
            child: Card(
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Center(child: Heading(text, HeadingStyle.h1))))));
  }
}
