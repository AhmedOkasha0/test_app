import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:test_project/favorite_screen.dart';
import 'package:test_project/home_screen.dart';

class persistanceNav extends StatefulWidget {
  @override
  State<persistanceNav> createState() => _persistanceNavState();
}

class _persistanceNavState extends State<persistanceNav> {
  PersistentTabController persiscontroller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: persiscontroller,
      screens: buildScreen(),
      items: navBarItems(),
      backgroundColor: Colors.grey,
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true,

    );
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_filled),
        title: 'Home',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: 'favorite',
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}

List<Widget> buildScreen() {
  return [
    HomeScreen(),
    FavoriteScreen(),
  ];
}
