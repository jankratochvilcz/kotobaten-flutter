import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/home.model.dart';

class HomeViewModel extends StateNotifier<HomeModel> {
  final KotobatenApiService _apiService;
  final AuthenticationService _authenticationService;

  HomeViewModel(KotobatenApiService apiService, AuthenticationService authenticationService)
      : _apiService = apiService, _authenticationService = authenticationService,
        super(const HomeModel.initial());

  Future initialize() async {
    state = const HomeModel.initial();

    if(!await _authenticationService.hasToken()) {
      state = const HomeModel.requiresLogin();
      return;
    }
  }

  void reset() {
    state = const HomeModel.initial();
  }
}
