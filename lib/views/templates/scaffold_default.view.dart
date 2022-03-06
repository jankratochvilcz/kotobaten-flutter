import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/views/organisms/goal_rings.dart';
import 'package:kotobaten/views/organisms/profile.view.dart';

class ScaffoldDefault extends HookConsumerWidget {
  final Widget child;
  final FloatingActionButton? floatingActionButton;

  const ScaffoldDefault(this.child, {Key? key, this.floatingActionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).pushNamed(searchRoute),
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () => showProfileBottomSheet(context),
                tooltip: 'Your profile',
                icon: GoalRings(Theme.of(context).colorScheme.primaryContainer))
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
