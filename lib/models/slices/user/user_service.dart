import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_statistics.dart';
import 'package:kotobaten/services/analytics_service.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:mockito/annotations.dart';

final userServiceProvider = Provider<UserService>((ref) => UserService(
    ref.watch(kotobatenApiServiceProvider),
    ref.watch(userRepositoryProvider.notifier),
    ref.watch(analyticsServiceProvider)));

class UserService {
  final KotobatenApiService apiService;
  final UserRepository userRepository;
  final AnalyticsService analyticsService;

  UserService(this.apiService, this.userRepository, this.analyticsService);

  Future refreshUser({bool updateRetentionBackstop = false}) async {
    final currentModel = userRepository.current;
    if (currentModel is UserModelInitialized) {
      userRepository.update(currentModel.copyWith(refreshing: true));
    }

    final refreshedUser = await apiService.getUser(
        updateRetentionBackstop: updateRetentionBackstop);
    userRepository.update(UserModel.initialized(refreshedUser));

    analyticsService.setUser(refreshedUser);
  }

  UserInitialized setUser(UserInitialized user) {
    userRepository.update(UserModel.initialized(user));
    return user;
  }

  Future<UserGoals> updateGoals(UserGoals goals) async {
    final updatedGoals = await apiService.updateGoals(goals);

    final userModel = userRepository.current;
    if (userModel is UserModelInitialized) {
      userRepository.update(userModel.copyWith(
          user: userModel.user.copyWith(goals: updatedGoals)));
    }

    return updatedGoals;
  }

  UserStatistics updateStatistics(UserStatistics stats) {
    final userModel = userRepository.current;

    if (userModel is UserModelInitialized) {
      userRepository.update(
          userModel.copyWith(user: userModel.user.copyWith(stats: stats)));
    }

    return stats;
  }
}

@GenerateMocks([UserService])
void main() {}
