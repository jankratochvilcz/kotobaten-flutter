import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/services/navigation_service.dart';

class UserIntializedContext {
  final UserInitialized user;
  final UserModelInitialized userModel;

  UserIntializedContext(this.user, this.userModel);
}

UserIntializedContext? useInitializedUser(BuildContext context, WidgetRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final userRepository = ref.watch(userRepositoryProvider);

  final authService = ref.read(authServiceProvider);
  final userService = ref.read(userServiceProvider);
  final navigationService = ref.read(navigationServiceProvider);
  final dailyReminderService = ref.read(dailyReminderServiceProvider);

  if (authRepository is AuthModelInitial) {
    Future.microtask(() async {
      final result = await authService.initialize();
      if (result is AuthModelUnauthenticated) {
        await navigationService.goLogin(context);
      }
    });

    return null;
  }

  if (authRepository is AuthModelUnauthenticated &&
      !navigationService.isCurrentRouteAuthPage(context)) {
    Future.microtask(() => navigationService.goLogin(context));

    return null;
  }

  if (authRepository is AuthModelAuthenticated &&
      userRepository is UserModelInitial) {
    Future.microtask(() async {
      try {
        await userService.refreshUser();
      } catch (e) {
        await authService.logout();
        await navigationService.goLogin(context);
      }
    });
    Future.microtask(() async {
      await dailyReminderService.ensureInitialized();
    });

    return null;
  }

  return UserIntializedContext(
      (userRepository as UserModelInitialized).user, userRepository);
}
