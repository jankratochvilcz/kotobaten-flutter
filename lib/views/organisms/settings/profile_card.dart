import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/organisms/settings/timezone_card.dart';

class ProfileCard extends HookConsumerWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.read(authServiceProvider);
    return Column(children: [
      const TimezoneCard(),
      ButtonAsync(
        'Log out',
        authService.logout,
        icon: Icons.logout,
      )
    ]);
  }
}
