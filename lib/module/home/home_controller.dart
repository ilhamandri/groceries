import 'package:get/get.dart';
import 'package:groceries/module/profile/models/profile_model.dart';
import 'package:groceries/module/profile/profile_service.dart';
import 'package:groceries/module/profile/responses/profile_response.dart';

class HomePageController extends GetxController {
  var isAppleSelected = true.obs;
  var isOrangeSelected = false.obs;
  var isBananaSelected = false.obs;
  var isLoading = true.obs;

  RxList<ProfileModel> user = <ProfileModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    fetchUserProfile();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  fetchUserProfile() async {
    final res = await ProfileService().fetchUserProfile();
    var value = ProfileResponse.fromJson(res);
    user.addAll(value.result!);
    isLoading.value = false;
  }
}
