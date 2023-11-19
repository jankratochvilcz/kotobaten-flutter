import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/services/navigation_service.dart';

final bootstrappingServiceProvider = Provider((ref) => BootstrappingService(
    ref.watch(authRepositoryProvider.notifier),
    ref.watch(userRepositoryProvider.notifier),
    ref.watch(authServiceProvider),
    ref.watch(navigationServiceProvider),
    ref.watch(userServiceProvider),
    ref.watch(dailyReminderServiceProvider)));

class BootstrappingService {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  final AuthService authService;
  final NavigationService navigationService;
  final UserService userService;
  final DailyReminderService dailyReminderService;

  BootstrappingService(
      this.authRepository,
      this.userRepository,
      this.authService,
      this.navigationService,
      this.userService,
      this.dailyReminderService);

  UserModelInitialized? ensureInitialized(BuildContext context) {
    if (authRepository.current is AuthModelInitial) {
      Future.microtask(() async {
        final result = await authService.initialize();
        if (result is AuthModelUnauthenticated) {
          await navigationService.goLogin(context);
        }
      });

      return null;
    }

    if (authRepository.current is AuthModelUnauthenticated &&
        !navigationService.isCurrentRouteAuthPage(context)) {
      Future.microtask(() => navigationService.goLogin(context));

      return null;
    }

    if (authRepository.current is AuthModelAuthenticated &&
        userRepository.current is UserModelInitial) {
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

    return userRepository.current as UserModelInitialized;
  }
}
