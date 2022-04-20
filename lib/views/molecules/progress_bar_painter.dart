import 'package:flutter/material.dart';

class ProgressBarPainter extends CustomPainter {
  final double progress;
  final double width;
  final double height;
  final Color background;
  final Color foreground;
  final Color border;

  ProgressBarPainter(this.progress, this.width, this.height, this.background,
      this.foreground, this.border);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
        RRect.fromLTRBR(0, 0, width, height, const Radius.circular(32)),
        Paint()..color = border);

    canvas.drawRRect(
        RRect.fromLTRBR(1, 1, width - 1, height - 1, const Radius.circular(32)),
        Paint()..color = background);

    if (progress > 0) {
      canvas.drawRRect(
          RRect.fromLTRBR(1, 1, (width - 1) * progress, height - 1,
              const Radius.circular(32)),
          Paint()..color = foreground);
    }
  }

  @override
  bool shouldRepaint(covariant ProgressBarPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
