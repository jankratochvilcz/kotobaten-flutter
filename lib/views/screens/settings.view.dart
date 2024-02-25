import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/hooks/bootstrap_hook.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_model.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_repository.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_service.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/settings/app_version_card.dart';
import 'package:kotobaten/views/organisms/settings/goals_card.dart';
import 'package:kotobaten/views/organisms/settings/profile_card.dart';
import 'package:kotobaten/views/organisms/settings/reminders_card.dart';
import 'package:kotobaten/views/organisms/settings/time_investment_card.dart';

const cardBaseHeight = 74.0;

@RoutePage(name: 'SettingsRoute')
class SettingsView extends HookConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localSettingsService = ref.read(localSettingsServiceProvider);
    final dailyReminderService = ref.read(dailyReminderServiceProvider);

    final localSettings = ref.watch(localSettingsRepositoryProvider);

    final userModelInitialized = useInitializedUser(context, ref);

    if (userModelInitialized == null) {
      return const Loading();
    }

    if (localSettings is! LocalSettingsModelInitialized) {
      if (localSettings is LocalSettingsModelInitial) {
        Future.microtask(() => localSettingsService.initialize());
      }

      return const Loading();
    }

    return Padding(
        padding: allPadding(PaddingType.large),
        child: Center(
            child: SingleChildScrollView(
                child: Padding(
                    padding: verticalPadding(PaddingType.xLarge),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Heading("Difficulty", HeadingStyle.h1),
                        Padding(
                            padding: bottomPadding(PaddingType.xLarge),
                            child: Card(
                                child: Padding(
                                    padding: allPadding(PaddingType.large),
                                    child: SizedBox(
                                        width: 400,
                                        height: cardBaseHeight * 6,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  child: const GoalsCard(),
                                                  padding: bottomPadding(
                                                      PaddingType.xxLarge)),
                                              const TimeInvestmentCard(),
                                            ]))))),
                        const Heading("Profile", HeadingStyle.h1),
                        Padding(
                            padding: bottomPadding(PaddingType.xLarge),
                            child: Card(
                              child: SizedBox(
                                  width: 400,
                                  child: Padding(
                                      padding: allPadding(PaddingType.large),
                                      child: Column(children: [
                                        if (dailyReminderService
                                            .isPlatformSupported())
                                          const RemindersCard(),
                                        const ProfileCard(),
                                      ]))),
                            )),
                        const Heading("About", HeadingStyle.h1),
                        Padding(
                            padding: bottomPadding(PaddingType.xLarge),
                            child: Card(
                                child: SizedBox(
                              height: cardBaseHeight,
                              width: 400,
                              child: Padding(
                                  padding: allPadding(PaddingType.large),
                                  child: const Center(child: AppVersionCard())),
                            )))
                      ],
                    )))));
  }
}
