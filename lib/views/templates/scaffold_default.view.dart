import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/app_router.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/navigation.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/models/slices/navigation/overlays_repository.dart';
import 'package:kotobaten/models/slices/navigation/overlays_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/molecules/windowing_app_bar.dart';
import 'package:kotobaten/views/organisms/global_shortcuts.dart';
import 'package:kotobaten/views/organisms/keyboard_map.dart';
import 'package:kotobaten/views/templates/fab_selector.dart';

enum HelpMenuItems { about, androidApp, iosApp, help }

class HelpMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const HelpMenuItem(this.icon, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(children: [
        Padding(
            child: Icon(
              icon,
              color: getDescriptionColor(context),
            ),
            padding: rightPadding(PaddingType.large)),
        Text(label)
      ]);
}

int getRouteIndex(String? navigationPath) {
  switch (navigationPath) {
    case null:
      return 0;
    case HomeRoute.name:
      return 0;
    case CollectionRoute.name:
      return 1;
    case SearchRoute.name:
      return 2;
    case SettingsRoute.name:
      return 3;
    default:
      return 0;
  }
}

@RoutePage(name: 'ScaffoldRoute')
class ScaffoldDefault extends HookConsumerWidget {
  const ScaffoldDefault({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationService = ref.read(navigationServiceProvider);
    final overlaysModel = ref.watch(overlaysRepositoryProvider);
    final overlaysService = ref.read(overlaysServiceProvider);
    final selectedNavigationIndex = useState(0);

    final navigationItems = getNavigationItems(context);
    final homeNavigation = navigationItems[NavigationItemType.home]!;
    final collectionNavigation =
        navigationItems[NavigationItemType.collection]!;
    final settingsNavigation = navigationItems[NavigationItemType.settings]!;
    final searchNavigation = navigationItems[NavigationItemType.search]!;

    navigateToView(index) {
      switch (index) {
        case 0:
          navigationService.goHome(context, false);
          break;
        case 1:
          navigationService.goCollection(context);
          break;
        case 2:
          navigationService.goSearch(context);
          break;
        case 3:
          navigationService.goSettings(context);
          break;
      }
    }

    return AutoRouter(
      builder: (context, child) {
        final nestedRouter = AutoRouter.of(context);
        final pageSpecificFab = getFabForRoute(nestedRouter.current, context);

        selectedNavigationIndex.value =
            getRouteIndex(nestedRouter.current.name);

        var navigationBackgroundColor =
            Theme.of(context).colorScheme.primaryContainer;
        var navigationRailTextStyle =
            TextStyle(color: Theme.of(context).colorScheme.onPrimary);
        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            floatingActionButtonLocation: pageSpecificFab == null
                ? FloatingActionButtonLocation.endDocked
                : FloatingActionButtonLocation.endFloat,
            bottomNavigationBar: !isDesktop(context) &&
                    overlaysModel.overlaysOpenedCount < 1
                ? Container(
                    // this container is needed to paint the background as there is some bleed-through on high-def screens
                    color: navigationBackgroundColor,
                    child: Row(children: [
                      SizedBox(
                          width: 220,
                          child: BottomNavigationBar(
                              selectedFontSize: 10,
                              unselectedFontSize: 10,
                              showUnselectedLabels: false,
                              selectedItemColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              type: BottomNavigationBarType.fixed,
                              backgroundColor: navigationBackgroundColor,
                              items: [
                                BottomNavigationBarItem(
                                    icon: homeNavigation.icon,
                                    activeIcon: homeNavigation.iconActive,
                                    label: homeNavigation.label),
                                BottomNavigationBarItem(
                                    icon: collectionNavigation.icon,
                                    activeIcon: collectionNavigation.iconActive,
                                    label: collectionNavigation.label),
                                BottomNavigationBarItem(
                                    icon: settingsNavigation.icon,
                                    activeIcon: settingsNavigation.iconActive,
                                    label: settingsNavigation.label)
                              ],
                              landscapeLayout:
                                  BottomNavigationBarLandscapeLayout.spread,
                              currentIndex: selectedNavigationIndex.value,
                              onTap: navigateToView)),
                      Expanded(
                          child: Container(
                        color: navigationBackgroundColor,
                        height: 56,
                      )),
                    ]))
                : null,
            body: GlobalShortcuts(isDesktop(context)
                ? Stack(children: [
                    Row(
                      children: [
                        NavigationRail(
                            leading: Padding(
                                padding: topPadding(PaddingType.standard),
                                child: Container(
                                    constraints:
                                        const BoxConstraints(maxWidth: 40),
                                    child: Column(children: [
                                      Container(
                                          constraints: const BoxConstraints(
                                              maxWidth: 36),
                                          child: const Image(
                                            image: AssetImage(
                                                'assets/logos/logo_square_white.png'),
                                          )),
                                      Padding(
                                        padding: topPadding(PaddingType.small),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.keyboard_outlined,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary
                                                .withAlpha(128),
                                          ),
                                          onPressed: () {
                                            overlaysService.showOverlay(context,
                                                (_) => const KeyboardMap());
                                          },
                                        ),
                                      ),
                                    ]))),
                            groupAlignment: 0,
                            backgroundColor: navigationBackgroundColor,
                            destinations: [
                              NavigationRailDestination(
                                icon: homeNavigation.icon,
                                selectedIcon: homeNavigation.iconActive,
                                label: Text(
                                  homeNavigation.label,
                                  style: navigationRailTextStyle,
                                ),
                              ),
                              NavigationRailDestination(
                                icon: collectionNavigation.icon,
                                selectedIcon: collectionNavigation.iconActive,
                                label: Text(
                                  collectionNavigation.label,
                                  style: navigationRailTextStyle,
                                ),
                              ),
                              NavigationRailDestination(
                                icon: searchNavigation.icon,
                                selectedIcon: searchNavigation.iconActive,
                                label: Text(
                                  searchNavigation.label,
                                  style: navigationRailTextStyle,
                                ),
                              ),
                              NavigationRailDestination(
                                icon: settingsNavigation.icon,
                                selectedIcon: settingsNavigation.iconActive,
                                label: Text(
                                  settingsNavigation.label,
                                  style: navigationRailTextStyle,
                                ),
                              )
                            ],
                            selectedIndex: selectedNavigationIndex.value,
                            labelType: NavigationRailLabelType.selected,
                            onDestinationSelected: navigateToView),
                        VerticalDivider(
                          thickness: 1,
                          width: 0,
                          color: getDescriptionColorSubtle(context),
                        ),
                        Expanded(child: child)
                      ],
                    ),
                    const Positioned(
                      child: WindowingAppBar(),
                      top: 0,
                      right: 0,
                      left: 0,
                    )
                  ])
                : Stack(
                    children: [
                      child,
                      const Positioned(
                        child: WindowingAppBar(),
                        top: 0,
                        right: 0,
                        left: 0,
                      )
                    ],
                  )));
      },
    );
  }
}
