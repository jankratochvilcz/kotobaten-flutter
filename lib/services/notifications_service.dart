import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/subjects.dart';
import 'package:timezone/data/latest_all.dart' as time_zone;
import 'package:timezone/timezone.dart' as time_zone;

final notificationServiceProvider = Provider((ref) => NotificationService());

// Migrated to new version to unblock Android builds
// Good chance this is broken since it was migrated using LLM

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

  Future<void> initialize() async {
    await _configureLocalTimeZone();

    await notifications.initialize(
      _getInitializationSettings(),
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        if (response.payload != null) {
          debugPrint('notification payload: ${response.payload}');
        }
        selectedNotificationPayload = response.payload;
        selectNotificationSubject.add(response.payload);
      },
    );
  }

  Future<void> showDaily(
      String title, String? body, TimeOfDay timeOfDay, int? id) async {
    if (!platformSupportsPeriodicNotifications()) {
      return;
    }

    await initialize();
    await notifications.zonedSchedule(
      id ?? 0,
      title,
      body,
      _getNextDailyOccurrence(timeOfDay),
      defaultPlatformChannelSpecifics,
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  Future<void> clear(int notificationId) =>
      notifications.cancel(notificationId);

  void requestPermissions() {
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
    // final String? timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
    // time_zone.setLocalLocation(time_zone.getLocation(timeZoneName!));
  }

  InitializationSettings _getInitializationSettings() {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    /// Note: permissions aren't requested here just to demonstrate that can be
    /// done later
    // final initializationSettingsIOS = DarwinInitializationSettings(
    //     requestAlertPermission: false,
    //     requestBadgePermission: false,
    //     requestSoundPermission: false,
    //     onDidReceiveLocalNotification: (
    //       int id,
    //       String? title,
    //       String? body,
    //       String? payload,
    //     ) async {
    //       didReceiveLocalNotificationSubject.add(
    //         ReceivedNotification(
    //           id: id,
    //           title: title,
    //           body: body,
    //           payload: payload,
    //         ),
    //       );
    //     });
    // const initializationSettingsMacOS = DarwinInitializationSettings(
    //   requestAlertPermission: false,
    //   requestBadgePermission: false,
    //   requestSoundPermission: false,
    // );
    // const initializationSettingsLinux = LinuxInitializationSettings(
    //   defaultActionName: 'Open notification',
    //   defaultIcon: AssetsLinuxIcon('icons/app_icon.png'),
    // );
    const initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    return initializationSettings;
  }
}
