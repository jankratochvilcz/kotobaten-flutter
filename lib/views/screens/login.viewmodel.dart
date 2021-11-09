import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/login.model.dart';

class LoginScreenViewModel extends StateNotifier<LoginModel> {
  final KotobatenApiService _apiService;
  
  LoginScreenViewModel(KotobatenApiService apiService) : _apiService = apiService, super(const LoginModel.initial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<bool> login() async {
    state = const LoginModel.loading();

    final result = await _apiService.login(email.text, password.text);

    if (!result.item1) {
      state = LoginModel.error(result.item2);
      return false;
    }

    state = LoginModel.success(result.item2);

    return true;
  }
}
