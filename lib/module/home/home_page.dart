import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/module/cart/cart_controller.dart';
import 'package:groceries/module/home/home_controller.dart';
import 'package:groceries/module/home/models/fruit_model.dart';
import 'package:groceries/shared/widgets/display_item.dart';

class HomePage extends StatelessWidget {
  final _controller = Get.put<HomePageController>(HomePageController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => _controller.isLoading.value
          ? Center(
              child: CircularProgressIndicator(
                color: Color(0xff1EA050),
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Find ', style: TextStyle(color: Color(0xffFCAF05), fontSize: 24)),
                            TextSpan(text: 'Fresh Groceries', style: TextStyle(color: Color(0xff1EA050), fontSize: 24)),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(_controller.user[0].picture!.large!),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.grey[100]!, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.grey[50]!),
                      ),
                      hintText: "Search Groceries",
                      prefixIcon: const Icon(Icons.search, color: Color(0xff1EA050)),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('Groceries', style: TextStyle(fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              _controller.isAppleSelected.value = true;
                              _controller.isOrangeSelected.value = false;
                              _controller.isBananaSelected.value = false;
                            },
                            child: Text(
                              'Apple',
                              style:
                                  TextStyle(color: _controller.isAppleSelected.value ? Colors.white : Colors.grey[600]),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: _controller.isAppleSelected.value ? Color(0xff1EA050) : Colors.grey[350],
                                elevation: 0),
                          )),
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              _controller.isAppleSelected.value = false;
                              _controller.isOrangeSelected.value = true;
                              _controller.isBananaSelected.value = false;
                            },
                            child: Text(
                              'Orange',
                              style: TextStyle(
                                  color: _controller.isOrangeSelected.value ? Colors.white : Colors.grey[600]),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: _controller.isOrangeSelected.value ? Color(0xff1EA050) : Colors.grey[350],
                                elevation: 0),
                          )),
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              _controller.isAppleSelected.value = false;
                              _controller.isOrangeSelected.value = false;
                              _controller.isBananaSelected.value = true;
                            },
                            child: Text(
                              'Banana',
                              style: TextStyle(
                                  color: _controller.isBananaSelected.value ? Colors.white : Colors.grey[600]),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: _controller.isBananaSelected.value ? Color(0xff1EA050) : Colors.grey[350],
                                elevation: 0),
                          )),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Obx(() => Expanded(
                        child: listType(),
                      ))
                ],
              ),
            ),
    ));
  }

  Widget listType() {
    if (_controller.isAppleSelected.value) {
      return appleList();
    } else if (_controller.isOrangeSelected.value) {
      return orangeList();
    } else {
      return bananaList();
    }
  }

  Widget appleList() {
    return ListView(
      children: [
        DisplayItem(
          name: 'Sweet Apple Indonesia',
          price: 'Rp 25.000',
          image_path: 'assets/images/apple.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Apple Indonesia', harga: 'Rp 25.000', image: 'assets/images/apple.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Apple Canada',
          price: 'Rp 15.000',
          image_path: 'assets/images/apple.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Apple Canada', harga: 'Rp 15.000', image: 'assets/images/apple.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Apple Japan',
          price: 'Rp 20.000',
          image_path: 'assets/images/apple.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Apple Japan', harga: 'Rp 20.000', image: 'assets/images/apple.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Apple India',
          price: 'Rp 25.000',
          image_path: 'assets/images/apple.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Apple India', harga: 'Rp 25.000', image: 'assets/images/apple.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Apple Namibia',
          price: 'Rp 5.000',
          image_path: 'assets/images/apple.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Apple Namibia', harga: 'Rp 5.000', image: 'assets/images/apple.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Apple America',
          price: 'Rp 35.000',
          image_path: 'assets/images/apple.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Apple America', harga: 'Rp 35.000', image: 'assets/images/apple.png'));
          },
        ),
      ],
    );
  }

  Widget orangeList() {
    return ListView(
      children: [
        DisplayItem(
          name: 'Sweet Orange Indonesia',
          price: 'Rp 25.000',
          image_path: 'assets/images/orange.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Orange Indonesia', harga: 'Rp 25.000', image: 'assets/images/orange.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Orange Canada',
          price: 'Rp 15.000',
          image_path: 'assets/images/orange.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Orange Canada', harga: 'Rp 15.000', image: 'assets/images/orange.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Orange Japan',
          price: 'Rp 20.000',
          image_path: 'assets/images/orange.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Orange Japan', harga: 'Rp 20.000', image: 'assets/images/orange.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Orange India',
          price: 'Rp 25.000',
          image_path: 'assets/images/orange.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Orange India', harga: 'Rp 25.000', image: 'assets/images/orange.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Orange Namibia',
          price: 'Rp 5.000',
          image_path: 'assets/images/orange.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Orange Namibia', harga: 'Rp 5.000', image: 'assets/images/orange.png'));
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget bananaList() {
    return ListView(
      children: [
        DisplayItem(
          name: 'Sweet Banana Italia',
          price: 'Rp 25.000',
          image_path: 'assets/images/bananas.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Banana Italia', harga: 'Rp 25.000', image: 'assets/images/bananas.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Banana Arabic',
          price: 'Rp 15.000',
          image_path: 'assets/images/bananas.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Banana Arabic', harga: 'Rp 15.000', image: 'assets/images/bananas.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Banana Japan',
          price: 'Rp 20.000',
          image_path: 'assets/images/bananas.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Banana Japan', harga: 'Rp 20.000', image: 'assets/images/bananas.png'));
          },
        ),
        const SizedBox(height: 8),
        DisplayItem(
          name: 'Sweet Banana Africa',
          price: 'Rp 25.000',
          image_path: 'assets/images/bananas.png',
          add: () {
            var cartCtrl = Get.find<CartController>();
            cartCtrl.fruits
                .add(FruitModel(name: 'Sweet Banana Africa', harga: 'Rp 25.000', image: 'assets/images/bananas.png'));
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
