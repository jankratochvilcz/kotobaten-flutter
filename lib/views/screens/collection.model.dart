import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kotobaten/models/card.dart';

part 'collection.model.freezed.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const CollectionModel._();

  const factory CollectionModel.initial() = CollectionModelInitial;
  const factory CollectionModel.initializing() = CollectionModelInitializing;
  const factory CollectionModel.initialized(
          List<CardInitialized> cards, int pagesLoaded, bool loadingNextPage) =
      CollectionModelInitialized;
}
