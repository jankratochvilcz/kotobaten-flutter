import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final localSettingsStorageServiceProvider =
    Provider<LocalSettingsStorageService>(
        (ref) => LocalSettingsStorageService());

class LocalSettingsStorageService {
  static const _dailyNotificationToken = 'DailyNotification';

  Future<TimeOfDay?> getDailyNotification() async {
    final preferences = await SharedPreferences.getInstance();
    final valueAsString = preferences.getString(_dailyNotificationToken);

    if (valueAsString == null || valueAsString == "") {
      return null;
    }

    return TimeOfDay.fromDateTime(
        DateTime.fromMillisecondsSinceEpoch(int.parse(valueAsString)));
  }

  Future setDailyNotification(TimeOfDay? timeOfDay) async {
    final preferences = await SharedPreferences.getInstance();

    final value = timeOfDay != null
        ? DateTime(2020, 1, 1, timeOfDay.hour, timeOfDay.minute)
            .millisecondsSinceEpoch
            .toString()
        : null;

    await preferences.setString(_dailyNotificationToken, value ?? "");
  }
}
