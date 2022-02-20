import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_settings_model.freezed.dart';

@freezed
class LocalSettings with _$LocalSettings {
  factory LocalSettings.initial() = LocalSettingsModelInitial;
  factory LocalSettings.initialized(TimeOfDay? dailyNotificationTimeOfDay) =
      LocalSettingsModelInitialized;
}
