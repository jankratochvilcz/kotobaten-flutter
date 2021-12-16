import 'package:flutter/material.dart';

const segmentsCount = 100;
const gapLength = 2;

class ConsistencyBarPainter extends CustomPainter {
  final Color foregroundEmpty;
  final Color foregroundFilled;
  final double progress;

  ConsistencyBarPainter(
      this.foregroundEmpty, this.foregroundFilled, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final segmentSize = size.width / segmentsCount;

    // We need to account for the fact that there's one fewer gaps than bars.
    final segmentSizeWithoutGap =
        segmentSize - gapLength + gapLength / segmentsCount;

    for (var i = 0; i < segmentsCount; i++) {
      final previousSegmentsLength =
          (segmentSizeWithoutGap + gapLength) * i.toDouble();
      canvas.drawRRect(
          RRect.fromRectXY(
              Rect.fromLTWH(previousSegmentsLength, 0, segmentSizeWithoutGap,
                  size.height),
              2,
              2),
          Paint()
            ..color =
                progress * 100 >= i + 1 ? foregroundFilled : foregroundEmpty);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
