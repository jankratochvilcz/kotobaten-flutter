import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/routes.dart';

final navigationServiceProvider = Provider((ref) => NavigationService());

class NavigationService {
  goBack(BuildContext context) => Navigator.of(context).pop();

  Future<dynamic> goPractice(BuildContext context,
      {bool replaceCurrent = false, bool showOnboarding = false}) {
    final navigator = Navigator.of(context);

    final args = PracticeArguments(showOnboarding);

    return replaceCurrent
        ? navigator.pushReplacementNamed(practiceRoute, arguments: args)
        : navigator.pushNamed(practiceRoute, arguments: args);
  }

  Future<dynamic> goPostPractice(BuildContext context) =>
      Navigator.of(context).pushReplacementNamed(postPracticeRoute);

  Future<dynamic> goSearch(BuildContext context) =>
      Navigator.of(context).pushNamed(searchRoute);

  Future<dynamic> goCollection(BuildContext context) =>
      Navigator.of(context).pushNamed(collectionRoute);

  Future<dynamic> goSettings(BuildContext context) =>
      Navigator.of(context).pushNamed(settingsRoute);

  Future<dynamic> goLogin(BuildContext context) => Navigator.of(context)
      .pushNamedAndRemoveUntil(loginRoute, (route) => false);

  Future<dynamic> goHome(BuildContext context) => Navigator.of(context)
      .pushNamedAndRemoveUntil(homeRoute, (route) => false);

  Future<dynamic> goOnboarding(BuildContext context) => Navigator.of(context)
      .pushNamedAndRemoveUntil(onboardingRoute, (route) => false);
}
