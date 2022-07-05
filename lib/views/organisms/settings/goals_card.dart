import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/goals_edit.dart';
import 'package:kotobaten/views/organisms/loading.dart';

class GoalsCard extends HookConsumerWidget {
  const GoalsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);
    final userService = ref.read(userServiceProvider);

    if (userModel is! UserModelInitialized) {
      return const Loading();
    }

    return Headed(
        GoalsEditDialog(userService.updateGoals, userModel.user.goals),
        "Daily goal",
        HeadingStyle.h2);
  }
}
