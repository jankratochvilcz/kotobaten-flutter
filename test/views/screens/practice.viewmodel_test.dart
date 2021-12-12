import 'package:flutter_test/flutter_test.dart';
import 'package:kotobaten/models/card.dart';
import 'package:kotobaten/models/impression.dart';
import 'package:kotobaten/models/impression_type.dart';
import 'package:kotobaten/models/user/statistics.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/kotobaten_api.mocks.dart';
import 'package:kotobaten/services/repositories/user_repository.mocks.dart';
import 'package:kotobaten/views/screens/practice.viewmodel.dart';
import 'package:mockito/mockito.dart';

void main() {
  group("getProgress", () {
    test("starts at zero", () {
      final target = getDependencies().target;

      expect(target.getProgress(), 0);
    });

    test("starts at zero after init", () async {
      final dependencies = getDependencies();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => getImpressions(2).toList());

      await dependencies.target.initialize();
      expect(dependencies.target.getProgress(), 0);
    });

    test("get 0.5 midway through", () async {
      final dependencies = getDependencies();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => getImpressions(2).toList());

      setupStatisticsUpdates(dependencies);

      await dependencies.target.initialize();
      dependencies.target.reveal();
      await dependencies.target.evaluateCorrect();

      expect(dependencies.target.getProgress(), 0.5);
    });

    test("get 0 after completion", () async {
      final dependencies = getDependencies();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => getImpressions(2).toList());

      setupStatisticsUpdates(dependencies);

      await dependencies.target.initialize();
      dependencies.target.reveal();
      await dependencies.target.evaluateCorrect();
      dependencies.target.reveal();
      await dependencies.target.evaluateCorrect();

      expect(dependencies.target.getProgress(), 0);
    });
  });

  group("evaluateWrong", () {
    test("last remaining word triggers it again", () async {
      final dependencies = getDependencies();
      final impressions = getImpressions(1).toList();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => impressions);

      setupStatisticsUpdates(dependencies);

      await dependencies.target.initialize();
      dependencies.target.reveal();
      await dependencies.target.evaluateWrong();

      expect(dependencies.target.getImpressionViewType().name,
          impressions[0].impressionType.name);

      expect(dependencies.target.getProgress(), 0);
    });
  });
}

class PractiveViewModelTestDependencies {
  MockKotobatenApiService apiService;
  MockUserRepository userRepisitory;
  PracticeViewModel target;

  PractiveViewModelTestDependencies(
      this.target, this.apiService, this.userRepisitory);
}

PractiveViewModelTestDependencies getDependencies() {
  final apiService = MockKotobatenApiService();
  final userRepository = MockUserRepository();

  return PractiveViewModelTestDependencies(
      PracticeViewModel(apiService, userRepository),
      apiService,
      userRepository);
}

Iterable<Impression> getImpressions(int count) sync* {
  for (var i = 0; i < count; i++) {
    yield Impression.initialized(
        Card(1, 'a', 'b', 'c'), ImpressionType.discover);
  }
}

Statistics getStatistics() => Statistics(0, 0, 0, 0, 0, DateTime(2020));

setupStatisticsUpdates(PractiveViewModelTestDependencies dependencies) {
  when(dependencies.apiService.postImpression(any, any))
      .thenAnswer((_) async => getStatistics());

  when(dependencies.userRepisitory.get()).thenReturn(User.initial());
}
