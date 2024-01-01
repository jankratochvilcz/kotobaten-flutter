import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/navigation/overlays_model.dart';
import 'package:kotobaten/models/slices/repository.dart';

final overlaysRepositoryProvider =
    StateNotifierProvider<OverlaysRepository, OverlaysModel>(
        (ref) => OverlaysRepository());

class OverlaysRepository extends Repository<OverlaysModel> {
  OverlaysRepository() : super(OverlaysModel(0));

  bool isOverlayOpen() {
    return state.overlaysOpenedCount > 0;
  }

  void increment() {
    update(state.copyWith(overlaysOpenedCount: state.overlaysOpenedCount + 1));
  }

  void decrement() {
    if (state.overlaysOpenedCount < 1) {
      return;
    }

    update(state.copyWith(overlaysOpenedCount: state.overlaysOpenedCount - 1));
  }
}
