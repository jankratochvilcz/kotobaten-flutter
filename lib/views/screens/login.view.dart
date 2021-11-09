import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/screens/login.model.dart';
import 'package:kotobaten/views/screens/login.viewmodel.dart';

final _viewModelProvider =
    StateNotifierProvider<LoginScreenViewModel, LoginModel>(
        (ref) => LoginScreenViewModel(ref.watch(kotobatenApiServiceProvider)));

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  void login() => {};

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);

    return Center(
        child: Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(controller: viewModel.email),
          TextField(controller: viewModel.password, obscureText: true),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: ElevatedButton(
                  onPressed: model is! Loading ? viewModel.login : null,
                  child: Text(model is! Loading ? 'Login' : 'Logging in...'))),
          if (model is Error) Text(model.error)
        ],
      ),
    ));
  }
}
