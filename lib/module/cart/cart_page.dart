import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/module/cart/cart_controller.dart';

class CartPage extends StatelessWidget {
  final _controller = Get.put<CartController>(CartController());

  CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1EA050),
        title: Text(_controller.title),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Cart Page'),
        ],
      ),
    );
  }
}
