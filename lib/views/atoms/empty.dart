import 'package:flutter/material.dart';

// SizedBox.shrinked picked due to https://stackoverflow.com/a/55796929.

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}
