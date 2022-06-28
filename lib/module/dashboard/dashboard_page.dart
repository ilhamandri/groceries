import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/module/cart/cart_page.dart';
import 'package:groceries/module/dashboard/dashboard_controller.dart';
import 'package:groceries/module/home/home_page.dart';
import 'package:groceries/module/profile/profile_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex.value,
              children: [
                HomePage(),
                CartPage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.orange,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            items: [
              _bottomNavigationBarItem(icon: Icons.home, label: 'Home'),
              _bottomNavigationBarItem(icon: Icons.local_grocery_store, label: 'Cart'),
              _bottomNavigationBarItem(icon: Icons.person, label: 'Profile'),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
