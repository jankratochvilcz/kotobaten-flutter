import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/views/screens/collection.view.dart';
import 'package:kotobaten/views/screens/home.view.dart';
import 'package:kotobaten/views/screens/login.view.dart';
import 'package:kotobaten/views/screens/onboarding.view.dart';
import 'package:kotobaten/views/screens/post_practice.view.dart';
import 'package:kotobaten/views/screens/practice.view.dart';
import 'package:kotobaten/views/screens/search.view.dart';
import 'package:kotobaten/views/screens/settings.view.dart';
import 'package:kotobaten/views/templates/scaffold_default.view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
      durationInMilliseconds: 0, reverseDurationInMilliseconds: 0);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/onboarding', page: OnboardingRoute.page),
        AutoRoute(path: '/practice', page: PracticeRoute.page),
        AutoRoute(path: '/post-practice', page: PostPracticeRoute.page),
        AutoRoute(
            path: '/app',
            page: ScaffoldRoute.page,
            initial: true,
            children: [
              AutoRoute(path: '', page: HomeRoute.page, initial: true),
              AutoRoute(
                path: 'collection',
                page: CollectionRoute.page,
              ),
              AutoRoute(path: 'search', page: SearchRoute.page),
              AutoRoute(path: 'settings', page: SettingsRoute.page)
            ])
      ];
}
