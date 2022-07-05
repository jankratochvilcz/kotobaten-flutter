import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_model.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_repository.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/desktop_card.dart';
import 'package:kotobaten/views/atoms/mobile_card.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/settings/app_version_card.dart';
import 'package:kotobaten/views/organisms/settings/goals_card.dart';
import 'package:kotobaten/views/organisms/settings/profile_card.dart';
import 'package:kotobaten/views/organisms/settings/reminders_card.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

class SettingsView extends HookConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localSettingsService = ref.read(localSettingsServiceProvider);
    final dailyReminderService = ref.read(dailyReminderServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);

    final localSettings = ref.watch(localSettingsRepositoryProvider);
    final authModel = ref.watch(authRepositoryProvider);

    final userModel = ref.watch(userRepositoryProvider);

    if (authModel is AuthModelUnauthenticated) {
      Future.microtask(() async {
        await navigationService.goLogin(context);
      });
    }

    if (localSettings is! LocalSettingsModelInitialized ||
        userModel is! UserModelInitialized) {
      if (localSettings is LocalSettingsModelInitial) {
        Future.microtask(() => localSettingsService.initialize());
      }

      return const Loading();
    }

    return ScaffoldDefault(Padding(
        padding: allPadding(PaddingType.large),
        child: Center(
            child: SingleChildScrollView(
                child: Padding(
                    padding: verticalPadding(PaddingType.xLarge),
                    child: MediaQuery.of(context).size.width >=
                            minimumDesktopSize
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const DesktopCard(GoalsCard()),
                              if (dailyReminderService.isPlatformSupported())
                                const DesktopCard(RemindersCard()),
                              const DesktopCard(AppVersionCard()),
                              const DesktopCard(ProfileCard())
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const MobileCard(GoalsCard()),
                              if (dailyReminderService.isPlatformSupported())
                                const MobileCard(RemindersCard()),
                              const MobileCard(AppVersionCard()),
                              const MobileCard(ProfileCard())
                            ],
                          ))))));
  }
}
