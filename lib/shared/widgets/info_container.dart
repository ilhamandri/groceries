import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  String? image_path;
  String? info;
  String? additional_info;
  InfoContainer({Key? key, required this.image_path, required this.info, this.additional_info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey[400]!),
      ),
      child: Row(
        children: [
          SizedBox(height: 24, child: Image.asset(image_path!)),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info!,
              ),
              additional_info != null ? Text(additional_info!) : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
