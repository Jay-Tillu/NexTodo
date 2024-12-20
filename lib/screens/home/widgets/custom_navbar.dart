import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
    required this.controller,
    required this.navbarItems,
    required this.screenList,
  });

  final PersistentTabController controller;
  final List<PersistentBottomNavBarItem> navbarItems;
  final List<Widget> screenList;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      items: navbarItems,
      screens: screenList,
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.black87,
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withValues(),
            offset: Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 1,
          )
        ],
      ),
      isVisible: true,
      confineToSafeArea: true,
      navBarStyle: NavBarStyle.style1,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
    );
  }
}
