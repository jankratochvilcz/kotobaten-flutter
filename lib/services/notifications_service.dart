import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/subjects.dart';
import 'package:timezone/data/latest_all.dart' as time_zone;
import 'package:timezone/timezone.dart' as time_zone;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

final notificationServiceProvider = Provider((ref) => NotificationService());

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

const defaultAndroidChannelId = 'kotobaten.notifications';
const defaultAndroidChannelName = 'General';
const defaultAndroidChannelDescription = 'Kotobaten notifications';

class NotificationService {
  final FlutterLocalNotificationsPlugin notifications =
      FlutterLocalNotificationsPlugin();

  final BehaviorSubject<ReceivedNotification>
      didReceiveLocalNotificationSubject =
      BehaviorSubject<ReceivedNotification>();

  final BehaviorSubject<String?> selectNotificationSubject =
      BehaviorSubject<String?>();

  final defaultPlatformChannelSpecifics = const NotificationDetails(
      android: AndroidNotificationDetails(
          defaultAndroidChannelId, defaultAndroidChannelName,
          channelDescription: defaultAndroidChannelDescription,
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
          ticker: defaultAndroidChannelName));

  String? selectedNotificationPayload;

  bool platformSupportsPeriodicNotifications() =>
      !kIsWeb && !Platform.isLinux && !Platform.isWindows;

  Future _initialize() async {
    await _configureLocalTimeZone();

    await notifications.initialize(_getInitializationSettings(),
        onSelectNotification: (String? payload) async {
      if (payload != null) {
        debugPrint('notification payload: $payload');
      }
      selectedNotificationPayload = payload;
      selectNotificationSubject.add(payload);
    });
  }

  Future showImmediate(String title, String? body, {int? id}) async {
    await _initialize();
    await notifications.show(
        id ?? 0, title, body, defaultPlatformChannelSpecifics);
  }

  Future showDaily(
      String title, String? body, TimeOfDay timeOfDay, int? id) async {
    if (!platformSupportsPeriodicNotifications()) {
      return;
    }

    await _initialize();
    await notifications.zonedSchedule(id ?? 0, title, body,
        _getNextDailyOccurrence(timeOfDay), defaultPlatformChannelSpecifics,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time);
  }

  Future clear(int notificationId) => notifications.cancel(notificationId);

  requestPermissions() {
    notifications
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    notifications
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  time_zone.TZDateTime _getNextDailyOccurrence(TimeOfDay timeOfDay) {
    final time_zone.TZDateTime now = time_zone.TZDateTime.now(time_zone.local);
    time_zone.TZDateTime scheduledDate = time_zone.TZDateTime(time_zone.local,
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute, 0);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }

  Future<void> _configureLocalTimeZone() async {
    if (!platformSupportsPeriodicNotifications()) {
      return;
    }

    time_zone.initializeTimeZones();
    final String? timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
    time_zone.setLocalLocation(time_zone.getLocation(timeZoneName!));
  }

  InitializationSettings _getInitializationSettings() {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    /// Note: permissions aren't requested here just to demonstrate that can be
    /// done later
    final initializationSettingsIOS = IOSInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
        onDidReceiveLocalNotification: (
          int id,
          String? title,
          String? body,
          String? payload,
        ) async {
          didReceiveLocalNotificationSubject.add(
            ReceivedNotification(
              id: id,
              title: title,
              body: body,
              payload: payload,
            ),
          );
        });
    const initializationSettingsMacOS = MacOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    final initializationSettingsLinux = LinuxInitializationSettings(
      defaultActionName: 'Open notification',
      defaultIcon: AssetsLinuxIcon('icons/app_icon.png'),
    );
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS,
      linux: initializationSettingsLinux,
    );

    return initializationSettings;
  }
}
