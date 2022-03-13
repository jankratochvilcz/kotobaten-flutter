import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

extension TextSpanFactory on TextSpan {
  static TextSpan link(String text, Uri uri, BuildContext context,
          {Color? color}) =>
      TextSpan(
        text: text,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: color ?? Theme.of(context).colorScheme.secondary),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            launch(uri.toString());
          },
      );
}
