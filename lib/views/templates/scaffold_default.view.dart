import 'package:flutter/material.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/views/molecules/goal_rings_painter.dart';
import 'package:tuple/tuple.dart';

class ScaffoldDefault extends StatelessWidget {
  final Widget child;
  final FloatingActionButton? floatingActionButton;

  const ScaffoldDefault(this.child, {Key? key, this.floatingActionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryVariant,
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed(profileRoute),
                tooltip: 'Your profile',
                icon: CustomPaint(
                  size: Size.infinite,
                  painter: GoalRingsPainter(
                      Theme.of(context).colorScheme.primaryVariant,
                      [
                        Tuple2(Colors.blue.shade400, 0.5),
                        Tuple2(Colors.pink.shade400, 0.5),
                        Tuple2(Colors.green.shade400, 0.5)
                      ],
                      2),
                ))
          ],
          title: SizedBox(
            height: kToolbarHeight,
            child: Padding(
                padding: verticalPadding(PaddingType.standard),
                child: const Image(
                  image: AssetImage('assets/logos/logo_wide_white.png'),
                )),
          )),
      body: child);
}
