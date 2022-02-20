import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/repository.dart';

import 'local_settings_model.dart';

final localSettingsRepositoryProvider =
    StateNotifierProvider<LocalSettingsRepository, LocalSettings>(
        (ref) => LocalSettingsRepository());

class LocalSettingsRepository extends Repository<LocalSettings> {
  LocalSettingsRepository() : super(LocalSettings.initial());
}
