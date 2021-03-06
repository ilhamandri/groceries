import 'package:get/get.dart';
import 'package:groceries/module/home/home_controller.dart';
import 'package:groceries/module/profile/models/profile_model.dart';
import 'package:groceries/module/profile/profile_service.dart';
import 'package:groceries/module/profile/responses/profile_response.dart';

class ProfileController extends GetxController {
  final String title = 'Profile';
  var isLoading = true.obs;
  RxList<ProfileModel> user = <ProfileModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadData();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2), () {
      isLoading.value = false;
    });
  }

  // fetchUserProfile() async {
  //   final res = await ProfileService().fetchUserProfile();
  //   var value = ProfileResponse.fromJson(res);
  //   user.addAll(value.result!);
  //   isLoading.value = false;
  // }
}
