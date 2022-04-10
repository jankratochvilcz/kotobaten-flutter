import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_result.dart';

extension AuthExtensions on AuthModel {
  String? getCurrentToken() {
    final current = this;
    final currentModelResult =
        current is AuthModelAuthenticated ? current.result : null;

    if (currentModelResult is AuthResultSuccess) {
      return currentModelResult.token;
    }

    return null;
  }
}
