import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:kotobaten/views/screens/login.model.dart';

class LoginScreenViewModel extends StateNotifier<LoginModel> {
  LoginScreenViewModel() : super(const LoginModel.initial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String? token;

  Future<bool> login() async {
    state = const LoginModel.loading();

    await Future.delayed(const Duration(seconds: 5));
    final url = Uri.parse('https://kotobaten-api.azurewebsites.net/auth/login');
    var loginResponse = await Client().post(url, body: {
      'grant_type': 'password',
      'username': email.text,
      'password': password.text
    });

    if (loginResponse.statusCode != 200) {
      state = LoginModel.error(loginResponse.statusCode.toString());
      return false;
    }

    var deserializedResponse =
        jsonDecode(utf8.decode(loginResponse.bodyBytes)) as Map;

    var token = deserializedResponse['access_token'] as String;

    state = LoginModel.success(token);

    return true;
  }
}
