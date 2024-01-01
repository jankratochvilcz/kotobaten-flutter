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
        RRect.fromLTRBR(1, 1, width, height, const Radius.circular(24)),
        Paint()
          ..color = border
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.5);

    canvas.drawRRect(
        RRect.fromLTRBR(1, 1, width, height, const Radius.circular(24)),
        Paint()
          ..color = border.withOpacity(0.06)
          ..style = PaintingStyle.fill
          ..strokeWidth = 1.5);

    if (progress > 0) {
      canvas.drawRRect(
          RRect.fromLTRBR(
              1, 1, width * progress, height, const Radius.circular(24)),
          Paint()
            ..color = foreground
            ..style = PaintingStyle.fill
            ..strokeWidth = 2);
    }
  }

  @override
  bool shouldRepaint(covariant ProgressBarPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
