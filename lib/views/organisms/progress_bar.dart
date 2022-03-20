import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/views/molecules/progress_bar_painter.dart';

const width = 300.0;
const height = 10.0;

class ProgressBar extends ConsumerStatefulWidget {
  final double currentValue;

  const ProgressBar(this.currentValue, {Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProgressBarState();
}

class _ProgressBarState extends ConsumerState<ProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _currentlyRenderedValue = 0.0;
  double _currentAnimationProgress = 0.0;
  late Animation<double> _tween;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reset();
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_currentlyRenderedValue != widget.currentValue) {
      final endValue = widget.currentValue;
      _tween = CurvedAnimation(
          parent: Tween(begin: 0.0, end: 1.0).animate(_controller),
          curve: Curves.easeOutCirc)
        ..addListener(() {
          setState(() {
            _currentAnimationProgress = _tween.value;
          });
        })
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _currentlyRenderedValue = endValue;
          }
        });

      _controller.forward();
    }

    return CustomPaint(
      size: const Size(width, height),
      painter: ProgressBarPainter(
          _currentlyRenderedValue +
              (_currentAnimationProgress *
                  (widget.currentValue - _currentlyRenderedValue)),
          width,
          height,
          Theme.of(context).scaffoldBackgroundColor,
          Theme.of(context).colorScheme.secondary),
    );
  }
}
