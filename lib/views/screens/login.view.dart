import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/screens/login.model.dart';
import 'package:kotobaten/views/screens/login.viewmodel.dart';

final _viewModelProvider = StateNotifierProvider<LoginViewModel, LoginModel>(
    (ref) => LoginViewModel(
        ref.watch(kotobatenApiServiceProvider),
        ref.watch(authenticationServiceProvider),
        ref.watch(userRepositoryProvider.notifier)));

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    if (model is Success) {
      Future.microtask(() {
        viewModel.reset();
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
                  onPressed: model is! Loading
                      ? () => viewModel.login(onLoginError(context))
                      : null,
                  child: Text(model is! Loading ? 'Login' : 'Logging in...')))
        ],
      ),
    )));
  }

  onLoginError(BuildContext context) =>
      (String error) => ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error)));
}
