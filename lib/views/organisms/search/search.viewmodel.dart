import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/kotobaten_api.dart';
import 'package:kotobaten/views/organisms/search/search.model.dart';
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

  Future? currentSearchRequest;

  SearchViewModel(this._apiService) : super(SearchModel.initial(true)) {
    searchTermController
        .addListener(() => executeSearch(searchTermController.text));

    searchController.addListener(() => executeSearch(searchController.text));

    _searchTermUpdates.stream
        .distinct()
        .debounceTime(const Duration(milliseconds: 300))
        .forEach(_executeSearch);

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

  void executeSearch(String text) {
    _searchTermUpdates.add(text);
  }

  Future _executeSearch(String text) async {
    if (currentSearchRequest != null) {
      await currentSearchRequest;
    }

    final currentState = state;

    if (currentState is SearchModelLoaded) {
      state = SearchModel.loading(state.searchFocused, currentState);
    } else if (currentState is SearchModelLoading) {
      state = SearchModel.loading(
          state.searchFocused, currentState.previousResults);
    } else {
      state = SearchModel.loading(state.searchFocused, null);
    }

    final trimmedText = text.trim();

    if (trimmedText.isNotEmpty) {
      final searchRequest = _apiService.search(text.trim());
      currentSearchRequest = searchRequest;
      final result = await searchRequest;
      currentSearchRequest = null;
      state = SearchModel.loaded(state.searchFocused, result.query,
          result.cards, result.dictionaryCards);
    } else {
      state = SearchModel.loaded(state.searchFocused, trimmedText, [], []);
    }
  }

  SearchModelLoaded? getSearchResultsToShow() {
    final currentState = state;
    if (currentState is SearchModelLoaded) {
      return currentState;
    } else if (currentState is SearchModelLoading) {
      return currentState.previousResults;
    }

    return null;
  }

  String getCounterText() {
    final currentModel = state;
    var counterText = "No results";

    if (currentModel is SearchModelLoaded) {
      if (currentModel.dictionaryCards.isNotEmpty &&
          currentModel.cards.isEmpty) {
        counterText =
            "${currentModel.dictionaryCards.length} dictionary results";
      }

      if (currentModel.cards.isNotEmpty &&
          currentModel.dictionaryCards.isEmpty) {
        counterText = "${currentModel.cards.length} collection results";
      }

      if (currentModel.cards.isNotEmpty &&
          currentModel.dictionaryCards.isNotEmpty) {
        counterText =
            "${currentModel.cards.length} collection + ${currentModel.dictionaryCards.length} dictionary results";
      }
    } else if (currentModel is SearchModelLoading) {
      counterText = "Loading...";
    }

    return counterText;
  }
}
