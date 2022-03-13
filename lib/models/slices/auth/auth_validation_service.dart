import 'package:hooks_riverpod/hooks_riverpod.dart';

final emailValidationRule = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

final authValidationServiceProvider = Provider((_) => AuthValidationService());

class AuthValidationService {
  String? validateEmail(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Email cannot be empty.';
    }

    if (!emailValidationRule.hasMatch(value!)) {
      return 'Invalid email address';
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Password cannot be empty.';
    }

    if (value!.length < 5) {
      return 'Password must have at least 5 characters';
    }

    return null;
  }
}
