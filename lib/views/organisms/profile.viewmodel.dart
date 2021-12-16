import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';
import 'package:kotobaten/views/organisms/profile.model.dart';

class ProfileViewModel extends StateNotifier<ProfileModel> {
  final AuthenticationService _authenticationService;
  final UserRepository _userRepository;

  ProfileViewModel(
      ProfileModel state, this._authenticationService, this._userRepository)
      : super(state);

  void initialize() {
    final user = _userRepository.get();

    if (user is! InitializedUser) {
      state = const ProfileModel.notLoggedIn();
      return;
    }

    state = ProfileModel.initialized(user);
  }

  void logOut() {
    _authenticationService.deleteToken();
    state = const ProfileModel.notLoggedIn();
  }

  void reset() {
    state = const ProfileModel.initial();
  }
}
