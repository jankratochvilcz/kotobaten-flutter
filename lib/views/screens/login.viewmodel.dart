import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';

final loginViewModelProvider = Provider((ref) => LoginViewModel(ref.watch(authServiceProvider)));

class LoginViewModel {
  final AuthService authService;

  LoginViewModel(this.authService);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<bool> login(Function(String error) showError) async {
    final result = await authService.login(email.text, password.text);
    return result is AuthModelAuthenticated;
  }
}
