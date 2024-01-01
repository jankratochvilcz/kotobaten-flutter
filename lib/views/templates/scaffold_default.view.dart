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
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/organisms/search/universal_search.dart';
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
    case SettingsRoute.name:
      return 2;
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
    final selectedNavigationIndex = useState(0);
    final renderUniversalSearch = useState(false);

    final navigationItems = getNavigationItems(context);
    final homeNavigation = navigationItems[NavigationItemType.home]!;
    final collectionNavigation =
        navigationItems[NavigationItemType.collection]!;
    final settingsNavigation = navigationItems[NavigationItemType.settings]!;
    final searchNavigation = navigationItems[NavigationItemType.search]!;

    return AutoRouter(
      builder: (context, child) {
        final nestedRouter = AutoRouter.of(context);
        final pageSpecificFab = getFabForRoute(nestedRouter.current, context);

        final fabToShow = overlaysModel.overlaysOpenedCount > 0
            ? null
            : (pageSpecificFab ??
                (!isDesktop(context)
                    ? FloatingActionButton(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        child: searchNavigation.icon,
                        onPressed: () {
                          renderUniversalSearch.value = true;
                        })
                    : null));

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
            floatingActionButton: fabToShow,
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
                              onTap: (index) {
                                switch (index) {
                                  case 0:
                                    navigationService.goHome(context, false);
                                    break;
                                  case 1:
                                    navigationService.goCollection(context);
                                    break;
                                  case 2:
                                    navigationService.goSettings(context);
                                }
                              })),
                      Expanded(
                          child: Container(
                        color: navigationBackgroundColor,
                        height: 56,
                      )),
                    ]))
                : null,
            body: isDesktop(context)
                ? Row(
                    children: [
                      NavigationRail(
                          leading: Padding(
                              padding: topPadding(PaddingType.standard),
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 40),
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/logos/logo_square_white.png'),
                                  ))),
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
                          onDestinationSelected: (index) {
                            switch (index) {
                              case 0:
                                navigationService.goHome(context, false);
                                break;
                              case 1:
                                navigationService.goCollection(context);
                                break;
                              case 2:
                                navigationService.goSettings(context);
                            }
                          }),
                      const VerticalDivider(thickness: 1, width: 1),
                      Expanded(child: child)
                    ],
                  )
                : Stack(
                    children: [
                      child,
                      if (renderUniversalSearch.value)
                        UniversalSearch(
                          forceOpenView: true,
                          onClosed: () {
                            renderUniversalSearch.value = false;
                          },
                        ),
                    ],
                  ));
      },
    );
  }
}
