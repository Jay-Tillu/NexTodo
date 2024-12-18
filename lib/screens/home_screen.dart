import 'package:flutter/material.dart';
import 'package:nextodo/constants/custom_colors.dart';
import 'package:nextodo/screens/pending_screen.dart';
import 'package:nextodo/screens/today_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: PersistentTabView(
            context,
            controller: _controller,
            items: _navBarsItems(),
            screens: _buildScreens(),
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
                screenTransitionAnimationType:
                    ScreenTransitionAnimationType.slide,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const TodayScreen(),
    const PendingScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
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
