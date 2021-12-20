import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/cards/card.dart';

part 'search.model.freezed.dart';

@freezed
class SearchModel with _$SearchModel {
  factory SearchModel.initial(bool searchFocused) = SearchModelInitial;
  factory SearchModel.loading(bool searchFocused) = SearchModelLoading;
  factory SearchModel.loaded(bool searchFocused, String resultsQuery,
      List<CardInitialized> cards) = SearchModelLoaded;
}
