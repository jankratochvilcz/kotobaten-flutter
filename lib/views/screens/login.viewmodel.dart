import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_result.dart';
import 'package:kotobaten/models/slices/auth/auth_service.dart';
import 'package:kotobaten/views/screens/login.view.dart';

final loginViewModelProvider =
    Provider((ref) => LoginViewModel(ref.watch(authServiceProvider)));

class LoginViewModel {
  final AuthService authService;

  LoginViewModel(this.authService);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final form = GlobalKey<FormState>();

  Future<AuthModelAuthenticated> authenticate(LoginKind kind) async {
    if (!form.currentState!.validate()) {
      return AuthModelAuthenticated(AuthResult.error(403));
    }

    final result = await authService.login(
        email.text.trim(), password.text.trim(),
        createAccount: kind == LoginKind.signup);

    return result;
  }

  Future<void> reset() async {
    await authService.initialize();
  }

  String getPrimaryButtonDescription(LoginKind kind, AuthModel authModel) {
    if (authModel is AuthModelAuthenticating) {
      return 'Logging in...';
    }

    return kind == LoginKind.login ? 'Log in' : 'Create account';
  }

  String getSwitchKindDescription(LoginKind current) =>
      current == LoginKind.login
          ? 'Don\'t have an account?'
          : 'Already have an account?';

  String getSwitchKindButtonLabel(LoginKind current) =>
      current == LoginKind.login ? 'Sign up here.' : 'Log in here.';
}
