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
      body: Obx(() => _controller.fruits.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  // return Text(_controller.fruits[index].name!);
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[350]!),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_controller.fruits[index].name!),
                            InkWell(
                              onTap: () => _controller.fruits.removeAt(index),
                              child: Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  color: Colors.grey[200],
                                  image: DecorationImage(image: AssetImage(_controller.fruits[index].image!))),
                              height: 70,
                              width: 70,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _controller.fruits[index].name!,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '${_controller.fruits[index].harga}/kg',
                                  style: const TextStyle(
                                      fontSize: 16, color: Color(0xff7D7777), fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: _controller.fruits.length,
              ),
            )
          : Center(
              child: Text(
                'Oops your cart seems to be empty :(',
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[400]),
              ),
            )),
    );
  }
}
