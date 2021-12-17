import 'package:flutter/material.dart';
import 'package:kotobaten/consts/colors.dart';

class Description extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;

  const Description(this.data, {Key? key, this.textAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        data,
        textAlign: textAlign,
        style: TextStyle(color: descriptionColor, fontStyle: FontStyle.italic),
      );
}
