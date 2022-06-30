import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/module/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final _controller = Get.put<HomePageController>(HomePageController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1EA050),
        title: Text(_controller.title),
      ),
      body: Column(
        children: [
          Text('Home Page'),
        ],
      ),
    );
  }
}
