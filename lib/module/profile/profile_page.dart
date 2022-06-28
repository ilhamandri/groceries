import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/module/profile/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  final _controller = Get.put<ProfileController>(ProfileController());
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1EA050),
        elevation: 0,
        title: Text(_controller.title),
      ),
      body: Column(
        children: [
          Text('Profile Page'),
        ],
      ),
    );
  }
}
