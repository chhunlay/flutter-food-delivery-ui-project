import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFoodCategory extends StatelessWidget {
  CustomFoodCategory({
    this.index = 0,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  int index;
  AssetImage imagePath;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imagePath,
              ),
            ),
          ),
          Text(title),
          Text(subTitle),
        ],
      ),
    );
  }
}
