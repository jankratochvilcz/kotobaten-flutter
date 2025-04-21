import 'package:flutter/material.dart';

class ProgressBarPainter extends CustomPainter {
  final double progress;
  final double width;
  final double height;
  final Color background;
  final Color? foreground;
  final Shader? shader;
  final Color border;

  ProgressBarPainter({
    required this.progress,
    required this.width,
    required this.height,
    required this.background,
    required this.border,
    this.foreground,
    this.shader,
  });

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
      var paint = Paint()
        ..style = PaintingStyle.fill
        ..strokeWidth = 2;

      final currentForeground = foreground;
      if (currentForeground != null) {
        paint.color = currentForeground;
      }

      final currentShader = shader;
      if (currentShader != null) {
        paint.shader = currentShader;
      }

      canvas.drawRRect(
          RRect.fromLTRBR(
              1, 1, width * progress, height, const Radius.circular(24)),
          paint);
    }
  }

  @override
  bool shouldRepaint(covariant ProgressBarPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
