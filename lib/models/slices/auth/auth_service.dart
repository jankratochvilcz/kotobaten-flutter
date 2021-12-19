import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
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
    final currentToken = await authStorageService.getToken();

    var result = currentToken != null
        ? AuthModel.authenticated(currentToken)
        : AuthModel.unauthenticated();

    authRepository.update(result);

    return result;
  }

  Future<AuthModel> login(String email, String password,
      {bool createAccount = false}) async {
    authRepository.update(AuthModel.authenticating());

    final result = await (createAccount
        ? apiService.signupAndLogin(email, password)
        : apiService.login(email, password));

    if (!result.item1) {
      final error = AuthModel.authenticationError(result.item2);
      authRepository.update(error);
      return error;
    }

    await authStorageService.setToken(result.item2);

    authRepository.update(AuthModel.authenticated(result.item2));
    final user = await apiService.getUser();
    userService.setUser(user);

    return authRepository.current;
  }

  Future logout() async {
    if (authRepository.current is AuthModelUnauthenticated) {
      return;
    }

    await authStorageService.deleteToken();
    authRepository.update(AuthModel.unauthenticated());
  }

  String? getCurrentToken() {
    final currentModel = authRepository.current;

    return currentModel is AuthModelAuthenticated ? currentModel.token : null;
  }
}
