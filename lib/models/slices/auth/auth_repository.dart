import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/repository.dart';

final authRepositoryProvider =
    StateNotifierProvider<AuthRepository, AuthModel>((ref) => AuthRepository());

class AuthRepository extends Repository<AuthModel> {
  AuthRepository() : super(AuthModel.initial());
}
