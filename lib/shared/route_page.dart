import 'package:get/get.dart';
import 'package:groceries/module/cart/cart_controller.dart';
import 'package:groceries/module/cart/cart_page.dart';
import 'package:groceries/module/dashboard/dashboard_controller.dart';
import 'package:groceries/module/dashboard/dashboard_page.dart';
import 'package:groceries/module/home/home_controller.dart';
import 'package:groceries/module/home/home_page.dart';
import 'package:groceries/module/profile/profile_controller.dart';
import 'package:groceries/module/profile/profile_page.dart';
import 'package:groceries/shared/route_name.dart';

class RoutePage {
  static final route = [
    GetPage(
      name: RouteName.dashboard,
      page: () => DashboardPage(),
      binding: BindingsBuilder(() => Get.put<DashboardController>(DashboardController())),
    ),
    GetPage(
      name: RouteName.homepage,
      page: () => HomePage(),
      binding: BindingsBuilder(() => Get.put<HomePageController>(HomePageController())),
    ),
    GetPage(
      name: RouteName.cartpage,
      page: () => CartPage(),
      binding: BindingsBuilder(() => Get.put<CartController>(CartController())),
    ),
    GetPage(
      name: RouteName.profilePage,
      page: () => ProfilePage(),
      binding: BindingsBuilder(() => Get.put<ProfileController>(ProfileController())),
    )
  ];
}
