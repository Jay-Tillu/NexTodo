import 'package:flutter/material.dart';
import 'package:nextodo/utils/screen_list.dart';
import 'package:nextodo/utils/navbar_items.dart';
import 'package:nextodo/screens/home/widgets/custom_navbar.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CustomNavbar(
            controller: controller,
            navbarItems: navBarsItems(),
            screenList: screenList(),
          ),
        ),
      ),
    );
  }
}
