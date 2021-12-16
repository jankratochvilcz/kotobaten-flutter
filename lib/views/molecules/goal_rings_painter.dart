import 'package:flutter/material.dart';
import 'package:kotobaten/extensions/color.dart';
import 'package:tuple/tuple.dart';

const pi = 3.141592653589793238;

double degreeToRadian(double degree) {
  return degree * pi / 180;
}

class GoalRingsPainter extends CustomPainter {
  final Color background;
  final List<Tuple2<Color, double>> progress;
  final double strokeThickness;

  GoalRingsPainter(this.background, this.progress, this.strokeThickness);

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < progress.length; i++) {
      final ringOffset = strokeThickness * i * 2;
      drawGoalRing(
          Size(size.width - ringOffset, size.height - ringOffset),
          canvas,
          ringOffset,
          i * 45,
          progress[i].item2,
          progress[i].item1,
          i > 0 ? progress[i - 1].item2 : null);
    }
  }

  void drawGoalRing(Size size, Canvas canvas, double offset, double degreeShift,
      double progress, Color foreground, double? previousRingProgress) {
    final rectangleSize = size.width > size.height ? size.height : size.width;
    final double topOffset =
        size.height > size.width ? (size.height - rectangleSize) / 2 : 0;

    final shapeBounds = Rect.fromLTRB(0 + offset, topOffset + offset,
        rectangleSize, rectangleSize + topOffset);
    final paint = Paint()
      ..color = progress < 1 ? foreground : Colors.amber.shade500;

    final degrees = progress * 360;
    final radian = degreeToRadian(degrees);

    canvas.drawOval(
        shapeBounds,
        Paint()
          ..color = previousRingProgress == null || previousRingProgress < 1
              ? background.darken(0.02)
              : Colors.black12);
    canvas.drawArc(
        shapeBounds, degreeToRadian(degreeShift - 90), radian, true, paint);

    if (progress < 1) {
      final innerRectangleSize = rectangleSize - strokeThickness;
      final innerShapeBounds = Rect.fromLTRB(
          strokeThickness + offset,
          strokeThickness + topOffset + offset,
          innerRectangleSize,
          innerRectangleSize + topOffset);
      final innerPaint = Paint()..color = background;
      canvas.drawOval(innerShapeBounds, innerPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
