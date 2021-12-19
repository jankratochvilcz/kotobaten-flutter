import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/repository.dart';

final practiceRepositoryProvider =
    StateNotifierProvider<PracticeRepository, PracticeModel>(
        (ref) => PracticeRepository());

class PracticeRepository extends Repository<PracticeModel> {
  PracticeRepository() : super(const PracticeModel.initial());
}
