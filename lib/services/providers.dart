import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/app_configuration.dart';
import 'package:kotobaten/services/kotobaten_client.dart';

final appConfigurationServiceProvider =
    Provider((ref) => AppConfigurationService());

final appConfigurationProvider = Provider(
    (ref) => ref.watch(appConfigurationServiceProvider).getConfiguration());

final kotobatenClientProvider =
    Provider((ref) => KotobatenClient(ref.watch(appConfigurationProvider)));
