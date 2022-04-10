import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_result.dart';
import 'package:kotobaten/models/slices/auth/auth_storage_service.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/kotobaten_api.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService(
    ref.watch(authRepositoryProvider.notifier),
    ref.watch(authStorageServiceProvider),
    ref.watch(kotobatenApiServiceProvider),
    ref.watch(userServiceProvider)));

class AuthService {
  final AuthRepository authRepository;
  final AuthStorageService authStorageService;
  final KotobatenApiService apiService;
  final UserService userService;

  AuthService(this.authRepository, this.authStorageService, this.apiService,
      this.userService);

  Future<AuthModel> initialize() async {
    final token = await authStorageService.getToken();

    var result = token != null
        ? AuthModel.authenticated(AuthResult.success(token))
        : AuthModel.unauthenticated();

    authRepository.update(result);

    return result;
  }

  Future<AuthModelAuthenticated> login(String email, String password,
      {bool createAccount = false}) async {
    authRepository.update(AuthModel.authenticating());

    final apiResult = await (createAccount
        ? apiService.signupAndLogin(email, password)
        : apiService.login(email, password));

    final result = AuthModelAuthenticated(apiResult);
    authRepository.update(result);

    if (apiResult is AuthResultSuccess) {
      await authStorageService.setToken(apiResult.token);
      final user = await apiService.getUser();
      userService.setUser(user);
    }

    return result;
  }

  Future logout() async {
    if (authRepository.current is AuthModelUnauthenticated) {
      return;
    }

    await authStorageService.deleteToken();
    authRepository.update(AuthModel.unauthenticated());
  }
}
