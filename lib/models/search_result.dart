import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/slices/cards/card.dart';
import 'package:kotobaten/models/slices/dictionary/dictionary_card.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult(String query, List<CardInitialized> cards,
          List<DictionaryCardInitialized> dictionaryCards) =
      SearchResultInitialized;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
