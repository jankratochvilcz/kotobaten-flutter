import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_model.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_repository.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';

class RemindersCard extends HookConsumerWidget {
  const RemindersCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localSettings = ref.watch(localSettingsRepositoryProvider);
    final dailyReminderService = ref.read(dailyReminderServiceProvider);

    if (localSettings is! LocalSettingsModelInitialized) {
      return const Loading();
    }

    final dailyNotificationTimeOfDay = localSettings.dailyNotificationTimeOfDay;

    return Headed(
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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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

                    await dailyReminderService.change(newTimeOfDay);
                  },
                  icon: const Icon(Icons.edit_outlined),
                  color: Colors.black26,
                )
              ])
          ],
        ),
        "Daily reminder",
        HeadingStyle.h2);
  }
}
