import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/impression.dart';

part 'practice.model.freezed.dart';

@freezed
class PracticeModel with _$PracticeModel {
  const PracticeModel._();

  const factory PracticeModel.initial() = Initial;
  const factory PracticeModel.loading() = Loading;
  const factory PracticeModel.error(String error) = Error;
  const factory PracticeModel.finished() = Finished;

  const factory PracticeModel.inProgress(
      List<Impression> allImpressions,
      List<Impression> remainingImpressions,
      Impression currentImpression,
      bool revealed) = InProgress;
}
