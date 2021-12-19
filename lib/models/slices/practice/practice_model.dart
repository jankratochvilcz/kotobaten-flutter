import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/impression.dart';

part 'practice_model.freezed.dart';

@freezed
class PracticeModel with _$PracticeModel {
  const PracticeModel._();

  const factory PracticeModel.initial() = PracticeModelInitial;
  const factory PracticeModel.loading() = PracticeModelLoading;
  const factory PracticeModel.error(String error) = PracticeModelError;
  const factory PracticeModel.finished() = PracticeModelFinished;

  const factory PracticeModel.inProgress(
      List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed,
      bool speechPlayed) = PracticeModelInProgress;
}
