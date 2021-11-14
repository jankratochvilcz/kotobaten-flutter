import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/home.model.dart';

class HomeViewModel extends StateNotifier<HomeModel> {
  final KotobatenApiService _apiService;
  final AuthenticationService _authenticationService;

  HomeViewModel(this._apiService, this._authenticationService)
      : super(const HomeModel.initial());

  Future initialize() async {
    state = const HomeModel.initializing();

    if (!await _authenticationService.hasToken()) {
      state = const HomeModel.requiresLogin();
      return;
    }

    try {
      final user = await _apiService.getUser();
      state = HomeModel.initialized(user);
    } catch (e) {
      state = HomeModel.initializationError(e.toString());
    }
  }

  void reset() {
    state = const HomeModel.initial();
  }
}
