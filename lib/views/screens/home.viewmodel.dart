import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/card.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/services/repositories/user_repository.dart';
import 'package:kotobaten/views/screens/home.model.dart';

class HomeViewModel extends StateNotifier<HomeModel> {
  final KotobatenApiService _apiService;
  final AuthenticationService _authenticationService;
  final UserRepository _userRepository;

  HomeViewModel(
      this._apiService, this._authenticationService, this._userRepository)
      : super(const HomeModel.initial());

  Future initialize() async {
    state = const HomeModel.initializing();

    if (!await _authenticationService.hasToken()) {
      state = const HomeModel.requiresLogin();
      return;
    }

    try {
      final user = await _apiService.getUser();
      await _userRepository.set(user);
      state = HomeModel.initialized(user);
    } catch (e) {
      state = HomeModel.initializationError(e.toString());
    }
  }

  void redirectedToLogin() {
    state = const HomeModel.awaitingLogin();
  }

  void reset() {
    state = const HomeModel.initial();
  }

  Future<Card> createCard(Card card) => _apiService.postCard(card);
}
