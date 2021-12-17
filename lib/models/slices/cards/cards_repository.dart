import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/repository.dart';

import 'cards_model.dart';

final cardsRepositoryProvider =
    StateNotifierProvider<CardsRepository, CardsModel>(
        (ref) => CardsRepository());

class CardsRepository extends Repository<CardsModel> {
  CardsRepository() : super(CardsModel.initial());
}
