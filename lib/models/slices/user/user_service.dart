import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/models/slices/user/user_core.dart';
import 'package:kotobaten/models/slices/user/user_goals.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_statistics.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:mockito/annotations.dart';

final userServiceProvider = Provider<UserService>((ref) => UserService(
    ref.watch(kotobatenApiServiceProvider),
    ref.watch(userRepositoryProvider.notifier)));

class UserService {
  final KotobatenApiService apiService;
  final UserRepository userRepository;

  UserService(this.apiService, this.userRepository);

  Future refreshUser({bool updateRetentionBackstop = false}) async {
    final currentModel = userRepository.current;
    if (currentModel is UserModelInitialized) {
      userRepository.update(currentModel.copyWith(refreshing: true));
    }

    final refreshedUser = await apiService.getUser(
        updateRetentionBackstop: updateRetentionBackstop);

    userRepository.update(UserModel.initialized(refreshedUser));

    // Mock data for screenshots
    // userRepository.update(UserModel.initialized(refreshedUser.copyWith(
    //     stats: refreshedUser.stats.copyWith(
    //         discoveredToday: 4,
    //         discoveredWeek: 15,
    //         discoveredMonth: 34,
    //         currentBackstop: 0.36),
    //     goals: refreshedUser.goals.copyWith(
    //         discoverDaily: 5, discoverMonthly: 100, discoverWeekly: 25))));
  }

  Future completeOnboarding() async {
    await apiService.hideOnboarding();
    await refreshUser();
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

  Future<UserCoreInitialized> updateTimezone(
      String timezoneName, int utcOffsetHours) async {
    final updatedUser =
        await apiService.updateTimezone(timezoneName, utcOffsetHours);

    final userModel = userRepository.current;
    if (userModel is UserModelInitialized) {
      userRepository.update(
          userModel.copyWith(user: userModel.user.copyWith(user: updatedUser)));
    }

    return updatedUser;
  }

  Future<UserCoreInitialized> updateRetentionBackstopMaxThreshold(
      int number) async {
    final updatedUser =
        await apiService.updateRetentionBackstopMaxThreshold(number);

    final userModel = userRepository.current;
    if (userModel is UserModelInitialized) {
      userRepository.update(
          userModel.copyWith(user: userModel.user.copyWith(user: updatedUser)));
    }

    return updatedUser;
  }

  Future<UserCoreInitialized> toggleAudio() async {
    final userModel = userRepository.current;

    if (userModel is! UserModelInitialized) {
      throw Error();
    }

    final originalSetting = userModel.user.user.disableSounds;
    final revisedSetting = !(originalSetting ?? false);

    userRepository.update(userModel.copyWith(
        user: userModel.user.copyWith(
            user:
                userModel.user.user.copyWith(disableSounds: revisedSetting))));

    final updatedUser = await apiService.updateDisableAudio(revisedSetting);

    userRepository.update(
        userModel.copyWith(user: userModel.user.copyWith(user: updatedUser)));

    return updatedUser;
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
