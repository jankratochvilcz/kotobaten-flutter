// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CollectionRoute.name: (routeData) {
      final args = routeData.argsAs<CollectionRouteArgs>(
          orElse: () => const CollectionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CollectionView(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingView(),
      );
    },
    PostPracticeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PostPracticeView(),
      );
    },
    PracticeRoute.name: (routeData) {
      final args = routeData.argsAs<PracticeRouteArgs>(
          orElse: () => const PracticeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PracticeView(
          args: args.args,
          key: args.key,
        ),
      );
    },
    ScaffoldRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScaffoldDefault(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchView(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsView(),
      );
    },
  };
}

/// generated route for
/// [CollectionView]
class CollectionRoute extends PageRouteInfo<CollectionRouteArgs> {
  CollectionRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CollectionRoute.name,
          args: CollectionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CollectionRoute';

  static const PageInfo<CollectionRouteArgs> page =
      PageInfo<CollectionRouteArgs>(name);
}

class CollectionRouteArgs {
  const CollectionRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CollectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PostPracticeView]
class PostPracticeRoute extends PageRouteInfo<void> {
  const PostPracticeRoute({List<PageRouteInfo>? children})
      : super(
          PostPracticeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostPracticeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PracticeView]
class PracticeRoute extends PageRouteInfo<PracticeRouteArgs> {
  PracticeRoute({
    PracticeArguments? args,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PracticeRoute.name,
          args: PracticeRouteArgs(
            args: args,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PracticeRoute';

  static const PageInfo<PracticeRouteArgs> page =
      PageInfo<PracticeRouteArgs>(name);
}

class PracticeRouteArgs {
  const PracticeRouteArgs({
    this.args,
    this.key,
  });

  final PracticeArguments? args;

  final Key? key;

  @override
  String toString() {
    return 'PracticeRouteArgs{args: $args, key: $key}';
  }
}

/// generated route for
/// [ScaffoldDefault]
class ScaffoldRoute extends PageRouteInfo<void> {
  const ScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          ScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScaffoldRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchView]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsView]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
