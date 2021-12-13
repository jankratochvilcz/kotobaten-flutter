import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/app_configuration.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/kotobaten_client.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';

final appConfigurationServiceProvider =
    Provider((ref) => AppConfigurationService());
final kotobatenApiServiceProvider = Provider((ref) => KotobatenApiService(
    ref.watch(authenticationServiceProvider),
    ref.watch(appConfigurationProvider),
    ref.watch(kotobatenClientProvider)));
final authenticationServiceProvider =
    Provider((ref) => AuthenticationService());
final userRepositoryProvider =
    StateNotifierProvider<UserRepository, User>((ref) => UserRepository());

final appConfigurationProvider = Provider(
    (ref) => ref.watch(appConfigurationServiceProvider).getConfiguration());

final kotobatenClientProvider =
    Provider((ref) => KotobatenClient(ref.watch(appConfigurationProvider)));
