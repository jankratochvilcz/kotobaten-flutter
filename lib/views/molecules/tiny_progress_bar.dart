import 'package:flutter/material.dart';

class TinyProgressBar extends StatelessWidget {
  final double? progress; // Progress value from 0 to 0.5, null represents gray

  TinyProgressBar({this.progress});

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      if (progress == null) {
        return Colors.transparent;
      } else {
        return Color.lerp(
            // Skewing towards blue to make things less depressing.
            Colors.redAccent,
            Colors.greenAccent,
            progress! * 6 / 3)!;
      }
    }

    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: getColor(),
        shape: BoxShape.circle,
      ),
    );
  }
}
