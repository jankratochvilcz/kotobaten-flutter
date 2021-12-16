import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/user/goals.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';
import 'package:kotobaten/views/organisms/profile.model.dart';

class ProfileViewModel extends StateNotifier<ProfileModel> {
  final AuthenticationService _authenticationService;
  final UserRepository _userRepository;
  final KotobatenApiService _apiService;

  ProfileViewModel(ProfileModel state, this._authenticationService,
      this._userRepository, this._apiService)
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

  Future<Goals> updateGoals(Goals goals) async {
    final updatedGoals = await _apiService.updateGoals(goals);

    final user = _userRepository.get();
    if (user is InitializedUser) {
      await _userRepository.set(user.copyWith(goals: updatedGoals));
    }

    final currentState = state;
    if (currentState is Initialized) {
      state = currentState.copyWith(
          user: currentState.user.copyWith(goals: updatedGoals));
    }

    return updatedGoals;
  }

  void reset() {
    state = const ProfileModel.initial();
  }
}
