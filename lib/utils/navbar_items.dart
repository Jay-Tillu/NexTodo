import 'package:flutter/material.dart';
import 'package:nextodo/constants/custom_colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.task_alt_rounded),
      title: "Today",
      activeColorPrimary: CustomColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.history_outlined),
      title: "Pending",
      activeColorPrimary: CustomColors.primaryColor,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}
