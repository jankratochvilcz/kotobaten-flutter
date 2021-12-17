import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/views/screens/login.viewmodel.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(loginViewModelProvider);
    final authModel = ref.watch(authRepositoryProvider);

    if (authModel is AuthModelAuthenticated) {
      Future.microtask(() {
        Navigator.pushNamedAndRemoveUntil(context, homeRoute, (route) => false);
      });
    }

    return Scaffold(
        body: Center(
            child: Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: viewModel.email,
            autofocus: true,
            decoration: const InputDecoration(hintText: 'Email'),
          ),
          TextField(
            controller: viewModel.password,
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: ElevatedButton(
                  onPressed: authModel is! AuthModelAuthenticating
                      ? () => viewModel.login(onLoginError(context))
                      : null,
                  child: Text(authModel is! AuthModelAuthenticating
                      ? 'Login'
                      : 'Logging in...')))
        ],
      ),
    )));
  }

  onLoginError(BuildContext context) =>
      (String error) => ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error)));
}
