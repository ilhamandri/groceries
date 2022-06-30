import 'dart:ui';

import 'package:flutter/material.dart';

class DisplayItem extends StatelessWidget {
  String? name;
  String? price;
  String? image_path;

  DisplayItem({Key? key, this.name, this.price, this.image_path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[350]!),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Colors.grey[200],
                      image: DecorationImage(image: AssetImage(image_path!))),
                  height: 70,
                  width: 70,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$price/kg',
                      style: const TextStyle(fontSize: 16, color: Color(0xff7D7777), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Buy'),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff1EA050),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
