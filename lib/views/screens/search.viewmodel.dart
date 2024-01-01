import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/screens/search.model.dart';
import 'package:rxdart/rxdart.dart';

final searchViewModelProvider =
    StateNotifierProvider<SearchViewModel, SearchModel>(
        (ref) => SearchViewModel(ref.read(kotobatenApiServiceProvider)));

class SearchViewModel extends StateNotifier<SearchModel> {
  final KotobatenApiService _apiService;

  final TextEditingController _searchTermController = TextEditingController();
  final SearchController _searchController = SearchController();
  final StreamController<String> _searchTermUpdates =
      StreamController<String>();

  final FocusNode _searchTextFocus = FocusNode();
  final StreamController<bool> _searchTextFocusUpdates =
      StreamController<bool>();

  SearchViewModel(this._apiService) : super(SearchModel.initial(true)) {
    searchTermController
        .addListener(() => _searchTermUpdates.add(searchTermController.text));

    searchController
        .addListener(() => _searchTermUpdates.add(searchController.text));

    _searchTermUpdates.stream
        .distinct()
        .where((x) => x.length > 1)
        .debounceTime(const Duration(milliseconds: 300))
        .forEach(executeSearch);

    _searchTextFocus.addListener(
        () => _searchTextFocusUpdates.add(_searchTextFocus.hasFocus));

    _searchTextFocusUpdates.stream
        .forEach((hasFocus) => state = state.copyWith(searchFocused: hasFocus));
  }

  TextEditingController get searchTermController => _searchTermController;
  SearchController get searchController => _searchController;
  FocusNode get searchTermFocusNode => _searchTextFocus;

  void focusSearch() {
    state = state.copyWith(searchFocused: true);
    _searchTermController.selection = TextSelection(
        baseOffset: 0, extentOffset: _searchTermController.text.length);
  }

  Future executeSearch(String text) async {
    state = SearchModel.loading(state.searchFocused);
    final result = await _apiService.search(text.trim());
    state = SearchModel.loaded(state.searchFocused, result.query, result.cards,
        result.dictionaryCards);
  }
}
