import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/app_router.dart';
import 'package:kotobaten/consts/routes.dart';

final navigationServiceProvider = Provider((ref) => NavigationService());

class NavigationService {
  canGoBack(BuildContext context) => context.router.canPop();
  goBack(BuildContext context) => context.router.pop();
  RouteData getCurrentRoute(BuildContext context) => context.router.current;

  Future<dynamic> goPractice(BuildContext context,
      {bool replaceCurrent = false, bool showOnboarding = false}) {
    final navigator = context.router;

    final args = PracticeArguments(showOnboarding: showOnboarding);

    return replaceCurrent
        ? navigator.replace(
            PracticeRoute(args: args),
          )
        : navigator.push(PracticeRoute(args: args));
  }

  Future<dynamic> goPostPractice(BuildContext context) =>
      context.router.replace(const PostPracticeRoute());

  Future<dynamic> goSearch(BuildContext context) =>
      context.router.push(const SearchRoute());

  Future<dynamic> goCollection(BuildContext context) =>
      context.router.push(CollectionRoute());

  Future<dynamic> goSettings(BuildContext context) =>
      context.router.push(const SettingsRoute());

  Future<dynamic> goLogin(BuildContext context) =>
      context.router.replace(const LoginRoute());

  Future<dynamic> goHome(BuildContext context, bool replaceCurrentPath) =>
      replaceCurrentPath
          ? context.router.replace(HomeRoute())
          : context.router.push(HomeRoute());

  Future<dynamic> goOnboarding(BuildContext context) =>
      context.router.push(const OnboardingRoute());

  bool isCurrentRouteAuthPage(BuildContext context) =>
      context.router.current.name == LoginRoute.name;
}
