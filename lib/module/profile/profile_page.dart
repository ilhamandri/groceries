import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/module/home/home_controller.dart';
import 'package:groceries/module/profile/profile_controller.dart';
import 'package:groceries/shared/widgets/info_container.dart';

class ProfilePage extends StatelessWidget {
  final _controller = Get.put<ProfileController>(ProfileController());
  var homeCtrl = Get.find<HomePageController>();

  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(0xff1EA050),
        elevation: 0,
        title: Text(_controller.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Obx(
          () => _controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(homeCtrl.user[0].picture!.large!),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          '${homeCtrl.user[0].name!.first!} ${homeCtrl.user[0].name!.last!}',
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius:
                                const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
                        child: Column(
                          children: [
                            InfoContainer(image_path: 'assets/icon/id-card.jpg', info: homeCtrl.user[0].id!.name!),
                            const SizedBox(height: 16),
                            InfoContainer(image_path: 'assets/icon/email.jpg', info: homeCtrl.user[0].email!),
                            const SizedBox(height: 16),
                            InfoContainer(image_path: 'assets/icon/phone.png', info: homeCtrl.user[0].phone!),
                            const SizedBox(height: 16),
                            InfoContainer(
                              image_path: 'assets/icon/location.jpg',
                              info: '${homeCtrl.user[0].location!.state!} - ${homeCtrl.user[0].location!.country!}',
                              additional_info:
                                  '${homeCtrl.user[0].location!.city!} - ${homeCtrl.user[0].location!.street!.number!}',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
