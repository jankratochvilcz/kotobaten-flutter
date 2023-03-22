import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes.dart';

final navigationServiceProvider = Provider((ref) => NavigationService());

class NavigationService {
  String? currentRoute;

  goBack(BuildContext context) => Navigator.of(context).pop();

  Future<dynamic> _pushNamed(String route, BuildContext context) {
    currentRoute = route;
    return Navigator.of(context).pushNamed(route);
  }

  Future<dynamic> _pushNamedAndRemoveUntil(String route,
      bool Function(Route<dynamic>) removeUntil, BuildContext context) {
    currentRoute = route;
    return Navigator.of(context).pushNamedAndRemoveUntil(route, removeUntil);
  }

  Future<dynamic> goPractice(BuildContext context,
      {bool replaceCurrent = false, bool showOnboarding = false}) {
    final navigator = Navigator.of(context);

    currentRoute = practiceRoute;

    final args = PracticeArguments(showOnboarding);

    return replaceCurrent
        ? navigator.pushReplacementNamed(practiceRoute, arguments: args)
        : navigator.pushNamed(practiceRoute, arguments: args);
  }

  Future<dynamic> goPostPractice(BuildContext context) =>
      Navigator.of(context).pushReplacementNamed(postPracticeRoute);

  Future<dynamic> goSearch(BuildContext context) =>
      _pushNamed(searchRoute, context);

  Future<dynamic> goCollection(BuildContext context) =>
      _pushNamed(collectionRoute, context);

  Future<dynamic> goSettings(BuildContext context) =>
      _pushNamed(settingsRoute, context);

  Future<dynamic> goLogin(BuildContext context) =>
      _pushNamedAndRemoveUntil(loginRoute, (route) => false, context);

  Future<dynamic> goHome(BuildContext context) =>
      _pushNamedAndRemoveUntil(homeRoute, (route) => false, context);

  Future<dynamic> goOnboarding(BuildContext context) =>
      _pushNamedAndRemoveUntil(
          onboardingRoute, ModalRoute.withName(homeRoute), context);

  bool isCurrentRouteAuthPage(BuildContext context) =>
      currentRoute == loginRoute;
}
