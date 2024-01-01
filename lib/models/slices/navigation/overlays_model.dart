import 'package:freezed_annotation/freezed_annotation.dart';

part 'overlays_model.freezed.dart';

@freezed
class OverlaysModel with _$OverlaysModel {
  factory OverlaysModel(int overlaysOpenedCount) = OverlaysModelInitialized;
}
