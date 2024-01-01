import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/app_router.dart';
import 'package:kotobaten/views/organisms/collection/fab_collection.dart';

Widget? getFabForRoute(RouteData route, BuildContext context) {
  switch (route.name) {
    case CollectionRoute.name:
      return const FabCollection();
    default:
      return null;
  }
}
