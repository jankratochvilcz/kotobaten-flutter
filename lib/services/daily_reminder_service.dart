import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_model.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_service.dart';
import 'package:kotobaten/services/notifications_service.dart';

const dailyNotificationTitle = "🗾 When will you practice Japanese today?";
const dailyNotificationBody =
    "Think about when can you practice your Japanese today. Daily practice is critical for long-term success.";
const dailyNotificationId =
    319823; // Random, but constant number to differentiate the notification

const defaultDailyNotification = TimeOfDay(hour: 9, minute: 0);

final dailyReminderServiceProvider = Provider<DailyReminderService>((ref) =>
    DailyReminderService(ref.read(notificationServiceProvider),
        ref.read(localSettingsServiceProvider)));

class DailyReminderService {
  final NotificationService _notificationService;
  final LocalSettingsService _localSettingsService;

  DailyReminderService(this._notificationService, this._localSettingsService);

  Future initializeDefaults() => change(defaultDailyNotification);

  Future turnOff() => change(null);

  bool isPlatformSupported() =>
      _notificationService.platformSupportsPeriodicNotifications();

  Future change(TimeOfDay? timeOfDay) async {
    await _localSettingsService.initialize();
    await _localSettingsService.updateDailyNotificationSetting(
        isPlatformSupported() ? timeOfDay : null);
    await ensureInitialized();
  }

  Future ensureInitialized() async {
    final currentSettings = (await _localSettingsService.initialize())
        as LocalSettingsModelInitialized;

    final currentNotificationTimeOfDay =
        currentSettings.dailyNotificationTimeOfDay;

    if (currentNotificationTimeOfDay == null) {
      await _notificationService.clear(dailyNotificationId);
      return;
    }

    await _notificationService.showDaily(
        dailyNotificationTitle,
        dailyNotificationBody,
        currentSettings.dailyNotificationTimeOfDay!,
        dailyNotificationId);
  }
}
