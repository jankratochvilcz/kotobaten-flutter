import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';
import 'package:kotobaten/views/screens/login.model.dart';

class LoginViewModel extends StateNotifier<LoginModel> {
  final KotobatenApiService _apiService;
  final AuthenticationService _authenticationService;
  final UserRepository _userRepository;

  LoginViewModel(
      this._apiService, this._authenticationService, this._userRepository)
      : super(const LoginModel.initial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<bool> login(Function(String error) showError) async {
    state = const LoginModel.loading();

    final result = await _apiService.login(email.text, password.text);

    if (!result.item1) {
      showError(result.item2);
      state = LoginModel.error(result.item2);
      return false;
    }

    await _authenticationService.setToken(result.item2);

    final user = await _apiService.getUser();
    _userRepository.set(user);

    state = LoginModel.success(result.item2);

    return true;
  }

  void reset() {
    state = const LoginModel.initial();
  }
}
