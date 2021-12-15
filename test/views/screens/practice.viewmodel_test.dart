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

      expect(dependencies.target.getCurrentAndRemainingImpressions().single,
          impressions[0]);

      expect(dependencies.target.getProgress(), 0);
    });

    test("re-adds wrong word twice", () async {
      final dependencies = getDependencies();
      final impressions = getImpressions(3).toList();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => impressions);

      setupStatisticsUpdates(dependencies);

      await dependencies.target.initialize();
      dependencies.target.reveal();
      await dependencies.target.evaluateWrong();

      expect(
          dependencies.target
              .getCurrentAndRemainingImpressions()
              .where((x) => x.card.id == 0)
              .length,
          2);
      expect(dependencies.target.getCurrentAndRemainingImpressions().length, 4);
    });
  });

  group('getSpeechToPlay', () {
    const speechPath = 'abc';

    test('returns path if available', () async {
      final dependencies = getDependencies();
      final impressions = getImpressions(1,
              speechPath: speechPath, impressionType: ImpressionType.sense)
          .toList();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => impressions);

      await dependencies.target.initialize();
      final actual = dependencies.target.getSpeechToPlay();

      expect(actual, speechPath);
    });

    test('returns null for kana', () async {
      final dependencies = getDependencies();
      final impressions = getImpressions(1,
              speechPath: speechPath, impressionType: ImpressionType.kana)
          .toList();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => impressions);

      await dependencies.target.initialize();
      final actual = dependencies.target.getSpeechToPlay();

      expect(actual, null);
    });

    test('returns null after marked as played', () async {
      final dependencies = getDependencies();
      final impressions = getImpressions(1, speechPath: speechPath).toList();

      when(dependencies.apiService.getImpressions())
          .thenAnswer((_) async => impressions);

      await dependencies.target.initialize();
      dependencies.target.markSpeechAsPlayed();
      final actual = dependencies.target.getSpeechToPlay();

      expect(actual, null);
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

Iterable<Impression> getImpressions(int count,
    {String? speechPath,
    ImpressionType impressionType = ImpressionType.kana}) sync* {
  for (var i = 0; i < count; i++) {
    yield Impression.initialized(Card(i, 'a', 'b', 'c', 'd') as CardInitialized,
        impressionType, speechPath);
  }
}

Statistics getStatistics() => Statistics(0, 0, 0, 0, 0, DateTime(2020));

setupStatisticsUpdates(PractiveViewModelTestDependencies dependencies) {
  when(dependencies.apiService.postImpression(any, any))
      .thenAnswer((_) async => getStatistics());

  when(dependencies.userRepisitory.get()).thenReturn(User.initial());
}
