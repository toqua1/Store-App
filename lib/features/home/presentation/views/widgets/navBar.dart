import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:store_app/features/home/presentation/views/cart_screen.dart';
import 'package:store_app/features/home/presentation/views/favourite_screen.dart';
import 'package:store_app/features/home/presentation/views/home_screen.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:store_app/features/home/presentation/views/profile_screen.dart';

class NavBar extends StatefulWidget {
  // const NavBar({Key key}) : super(key: key);
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late PersistentTabController _controller;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(IconsaxPlusBold.home_1),
        inactiveIcon: const Icon(IconsaxPlusLinear.home_1),
        title: ("Home"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconsaxPlusBold.heart),
        inactiveIcon: const Icon(IconsaxPlusLinear.heart),
        title: ("Favourites"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconsaxPlusBold.shopping_cart),
        inactiveIcon: const Icon(IconsaxPlusLinear.shopping_cart),
        title: ("My Cart"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconsaxPlusBold.profile_circle),
        inactiveIcon: const Icon(IconsaxPlusLinear.profile_circle),
        title: ("Profile"),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return const[
      HomeScreen(),
      FavouriteScreen(),
      CartScreen(),
      ProfileScreen()];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset:
            true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows:
            true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
