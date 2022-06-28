import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0.obs;

  RxInt totalNotification = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }
}