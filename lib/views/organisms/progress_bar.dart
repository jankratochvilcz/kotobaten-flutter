import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/views/molecules/progress_bar_painter.dart';

const width = 210.0;
const height = 14.0;

class ProgressBar extends ConsumerStatefulWidget {
  final double currentValuePrimary;
  final double currentValueSecondary;

  const ProgressBar(this.currentValuePrimary, this.currentValueSecondary,
      {Key? key})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProgressBarState();
}

class _ProgressBarState extends ConsumerState<ProgressBar>
    with TickerProviderStateMixin {
  late AnimationController _controllerPrimary;
  late AnimationController _controllerSecondary;
  double _currentlyRenderedValuePrimary = 0.0;
  double _currentlyRenderedValueSecondary = 0.0;
  double _currentAnimationProgressPrimary = 0.0;
  double _currentAnimationProgressSecondary = 0.0;
  late Animation<double> _tweenPrimary;
  late Animation<double> _tweenSecondary;

  @override
  void initState() {
    super.initState();
    _controllerPrimary = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controllerPrimary.reset();
        }
      });
    _controllerSecondary = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controllerSecondary.reset();
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controllerPrimary.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_currentlyRenderedValuePrimary != widget.currentValuePrimary) {
      final endValue = widget.currentValuePrimary;
      _tweenPrimary = CurvedAnimation(
          parent: Tween(begin: 0.0, end: 1.0).animate(_controllerPrimary),
          curve: Curves.easeOutCirc)
        ..addListener(() {
          setState(() {
            _currentAnimationProgressPrimary = _tweenPrimary.value;
          });
        })
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _currentlyRenderedValuePrimary = endValue;
          }
        });

      _controllerPrimary.forward();
    }

    if (_currentlyRenderedValueSecondary != widget.currentValueSecondary) {
      final endValue = widget.currentValueSecondary;
      _tweenSecondary = CurvedAnimation(
          parent: Tween(begin: 0.0, end: 1.0).animate(_controllerSecondary),
          curve: Curves.easeOutCirc)
        ..addListener(() {
          setState(() {
            _currentAnimationProgressSecondary = _tweenSecondary.value;
          });
        })
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            _currentlyRenderedValueSecondary = endValue;
          }
        });

      _controllerPrimary.forward();
      _controllerSecondary.forward();
    }

    var secondaryProgress = _currentlyRenderedValueSecondary +
        (_currentAnimationProgressSecondary *
            (widget.currentValueSecondary - _currentlyRenderedValueSecondary));
    var primaryProgress = _currentlyRenderedValuePrimary +
        (_currentAnimationProgressPrimary *
            (widget.currentValuePrimary - _currentlyRenderedValuePrimary));
    return Stack(
      children: [
        CustomPaint(
          size: const Size(width, height),
          painter: ProgressBarPainter(
            progress: primaryProgress,
            width: width,
            height: height,
            background: Theme.of(context).colorScheme.onSurface,
            border: getDescriptionColorSubtle(context),
            foreground: Theme.of(context).colorScheme.secondary,
          ),
        ),
        CustomPaint(
          size: const Size(width, height),
          painter: ProgressBarPainter(
              progress: secondaryProgress,
              width: width,
              height: height,
              background: Colors.transparent,
              border: Colors.transparent,
              shader: LinearGradient(
                colors: [
                  getDescriptionColorSubtle(context).withOpacity(0.2),
                  getDescriptionColorSubtle(context).withOpacity(0.5),
                ],
                stops: const [0.75, 1.0],
              ).createShader(const Rect.fromLTWH(0, 0, width, height))),
        ),
      ],
    );
  }
}
