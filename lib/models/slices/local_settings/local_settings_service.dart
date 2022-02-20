import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_repository.dart';
import 'package:kotobaten/models/slices/local_settings/local_settings_storage_service.dart';

import 'local_settings_model.dart';

final localSettingsServiceProvider = Provider<LocalSettingsService>((ref) =>
    LocalSettingsService(ref.watch(localSettingsRepositoryProvider.notifier),
        ref.watch(localSettingsStorageServiceProvider)));

class LocalSettingsService {
  final LocalSettingsRepository repository;
  final LocalSettingsStorageService storageService;

  LocalSettingsService(this.repository, this.storageService);

  Future<LocalSettings> initialize() async {
    final dailyNotification = await storageService.getDailyNotification();

    var localSettings = LocalSettings.initialized(dailyNotification);
    repository.update(localSettings);

    return localSettings;
  }

  Future<LocalSettings> updateDailyNotificationSetting(
      TimeOfDay? timeOfDay) async {
    final currentState = repository.current;

    if (currentState is! LocalSettingsModelInitialized) {
      throw ErrorDescription(
          "Cannot update notification settings on an unitialized LocalSettingsService");
    }

    await storageService.setDailyNotification(timeOfDay);

    final nextState =
        currentState.copyWith(dailyNotificationTimeOfDay: timeOfDay);
    repository.update(nextState);

    return nextState;
  }
}
