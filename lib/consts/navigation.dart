import 'package:flutter/material.dart';

class NavigationItem {
  Icon icon;
  Icon iconActive;
  String label;

  NavigationItem(this.icon, this.iconActive, this.label);
}

enum NavigationItemType { home, collection, settings, search }

Map<NavigationItemType, NavigationItem> getNavigationItems(
    BuildContext context) {
  final foregroundColor = Theme.of(context).colorScheme.onPrimary;
  return {
    NavigationItemType.home: NavigationItem(
        Icon(
          Icons.home_outlined,
          color: foregroundColor,
        ),
        Icon(
          Icons.home_filled,
          color: foregroundColor,
        ),
        "Home"),
    NavigationItemType.collection: NavigationItem(
        Icon(
          Icons.inbox_outlined,
          color: foregroundColor,
        ),
        Icon(
          Icons.inbox_rounded,
          color: foregroundColor,
        ),
        "Collection"),
    NavigationItemType.settings: NavigationItem(
        Icon(
          Icons.settings_outlined,
          color: foregroundColor,
        ),
        Icon(
          Icons.settings_rounded,
          color: foregroundColor,
        ),
        "Settings"),
    NavigationItemType.search: NavigationItem(
        Icon(
          Icons.search_outlined,
          color: foregroundColor,
        ),
        Icon(
          Icons.search,
          color: foregroundColor,
        ),
        "Search"),
  };
}
