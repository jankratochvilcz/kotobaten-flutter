import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';

final kotobatenApiServiceProvider = Provider((ref) => KotobatenApiService(ref.watch(authenticationServiceProvider)));
final authenticationServiceProvider = Provider((ref) => AuthenticationService());
final userRepositoryProvider = StateNotifierProvider<UserRepository, User>((ref) => UserRepository());