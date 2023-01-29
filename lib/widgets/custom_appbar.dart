import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  CustomSliverAppBar({
    required this.title,
    required this.onPressed,

    Key? key,
  }) : super(key: key);

  String title;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        leading: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor.withOpacity(0.2),
          ),
          margin: EdgeInsets.all(7),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.red,
            ),
            onPressed: onPressed,
          ),
        ),
        title: Text(title, style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),)
    );
  }
}