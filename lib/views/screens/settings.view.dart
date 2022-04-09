import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/app_package_information.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_model.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_repository.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

class SettingsView extends HookConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localSettings = ref.watch(localSettingsRepositoryProvider);
    final dailyReminderService = ref.read(dailyReminderServiceProvider);
    final appPackageInformation = ref.watch(appPackageInformationProvider);

    if (localSettings is! LocalSettingsModelInitialized) {
      return const Loading();
    }

    final dailyNotificationTimeOfDay = localSettings.dailyNotificationTimeOfDay;

    return ScaffoldDefault(Padding(
        padding: allPadding(PaddingType.large),
        child: Center(
            child: Column(
          children: [
            if (dailyReminderService.isPlatformSupported())
              Headed(
                  Column(
                    children: [
                      const Description(
                        "A daily reminder helps you stay consistent when life gets hectic.",
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Switch(
                              value: dailyNotificationTimeOfDay != null,
                              onChanged: (checked) => checked
                                  ? dailyReminderService.initializeDefaults()
                                  : dailyReminderService.turnOff()),
                          Text(dailyNotificationTimeOfDay != null
                              ? "Daily reminders on"
                              : "Daily reminders off")
                        ],
                      ),
                      if (dailyNotificationTimeOfDay != null)
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'A reminder will appear daily at ${dailyNotificationTimeOfDay.format(context)}'),
                              IconButton(
                                onPressed: () async {
                                  final newTimeOfDay = await showTimePicker(
                                      context: context,
                                      initialTime: dailyNotificationTimeOfDay);

                                  if (newTimeOfDay == null) {
                                    return;
                                  }

                                  await dailyReminderService
                                      .change(newTimeOfDay);
                                },
                                icon: const Icon(Icons.edit_outlined),
                                color: Colors.black26,
                              )
                            ])
                    ],
                  ),
                  "Daily reminder",
                  HeadingStyle.h2),
            appPackageInformation.when(
                data: (data) => Headed(
                    Description(
                        "${data.appName} ${data.version}+${data.buildNumber}"),
                    "App Version",
                    HeadingStyle.h2),
                error: (obj, trace) => const Empty(),
                loading: () => const Loading())
          ],
        ))));
  }
}
