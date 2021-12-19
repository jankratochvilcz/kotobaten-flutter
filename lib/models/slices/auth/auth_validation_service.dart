import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tuple/tuple.dart';
import 'package:collection/collection.dart';

final List<Tuple2<RegExp, String>> passwordRegexRules = [
  Tuple2(RegExp(r"\d+"), "At least one digit required."),
  Tuple2(RegExp(r"[a-z]+"), "At least one lowercase letter required."),
  Tuple2(RegExp(r"[A-Z]+"), "At least one uppercase letter required."),
  Tuple2(RegExp(r"\W"), "At least one special character required."),
];

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

    if (value!.length < 6) {
      return 'Password must have at least 6 characters';
    }

    return passwordRegexRules
        .firstWhereOrNull((x) => !x.item1.hasMatch(value))
        ?.item2;
  }
}
