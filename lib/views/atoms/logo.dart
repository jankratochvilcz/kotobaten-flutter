import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxHeight: 200, maxWidth: 260),
        child: const Image(
          image: AssetImage('assets/logos/logo_wide_color.png'),
        ));
  }
}
