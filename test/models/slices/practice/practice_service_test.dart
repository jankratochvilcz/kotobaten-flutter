import 'package:flutter_test/flutter_test.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/cards/card_type.dart';
import 'package:kotobaten/models/slices/practice/impression.dart';
import 'package:kotobaten/models/slices/practice/impression_type.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/models/slices/user/user_statistics.dart';
import 'package:kotobaten/models/slices/user/user_service.mocks.dart';
import 'package:kotobaten/services/kotobaten_api.mocks.dart';
import 'package:mockito/mockito.dart';
import 'package:tuple/tuple.dart';

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

  group('new impressions displayed correctly', () {
    final List<Tuple4<Impression, String, String?, String?>> impressions = [
      Tuple4(
          Impression.initialized(
              Card(0, 'sense', 'kana', 'kanji', DateTime.now(), null,
                  CardType.word) as CardInitialized,
              ImpressionType.discover,
              null),
          'sense',
          'kana',
          'kanji'),
      Tuple4(
          Impression.initialized(
              Card(0, 'sense', 'kana', null, DateTime.now(), null,
                  CardType.word) as CardInitialized,
              ImpressionType.discover,
              null),
          'sense',
          null,
          'kana'),
      Tuple4(
          Impression.initialized(
              Card(0, 'sense', null, 'kanji', DateTime.now(), null,
                  CardType.word) as CardInitialized,
              ImpressionType.discover,
              null),
          'sense',
          null,
          'kanji')
    ];

    for (var impression in impressions) {
      test(
          'sense: ${impression.item1.card.sense}, kana: ${impression.item1.card.kana}, kanji: ${impression.item1.card.kanji}',
          () async {
        final dependencies = getDependencies();
        when(dependencies.apiService.getImpressions())
            .thenAnswer((_) async => [impression.item1]);

        await dependencies.target.initialize();

        expect(dependencies.target.getPrimaryText(), impression.item4);
        expect(dependencies.target.getFurigana(), impression.item3);
        expect(dependencies.target.getSecondaryText(), impression.item2);
      });
    }
  });
}

class PractiveViewModelTestDependencies {
  MockKotobatenApiService apiService;
  MockUserService userService;
  PracticeRepository practiceRepository;
  PracticeService target;

  PractiveViewModelTestDependencies(
      this.target, this.apiService, this.userService, this.practiceRepository);
}

PractiveViewModelTestDependencies getDependencies() {
  final apiService = MockKotobatenApiService();
  final userService = MockUserService();
  final practiceRepository = PracticeRepository();

  return PractiveViewModelTestDependencies(
      PracticeService(practiceRepository, apiService, userService),
      apiService,
      userService,
      practiceRepository);
}

Iterable<Impression> getImpressions(int count,
    {String? speechPath,
    ImpressionType impressionType = ImpressionType.kana}) sync* {
  for (var i = 0; i < count; i++) {
    yield Impression.initialized(
        Card(i, 'a', 'b', 'c', DateTime.now(), 'd', CardType.word)
            as CardInitialized,
        impressionType,
        speechPath);
  }
}

UserStatistics getStatistics() =>
    UserStatistics(0, 0, 0, 0, 0, DateTime(2020), 0, 0, '', []);

setupStatisticsUpdates(PractiveViewModelTestDependencies dependencies) {
  when(dependencies.apiService.postImpression(any, any))
      .thenAnswer((_) async => getStatistics());

  when(dependencies.userService.updateStatistics(any))
      .thenReturn(getStatistics());
}
