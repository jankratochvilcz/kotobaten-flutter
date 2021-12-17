import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/repository.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';

final userRepositoryProvider =
    StateNotifierProvider<UserRepository, UserModel>((ref) => UserRepository());

class UserRepository extends Repository<UserModel> {
  UserRepository() : super(UserModel.initial());
}
