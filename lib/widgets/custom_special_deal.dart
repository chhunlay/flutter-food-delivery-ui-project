import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComtomSpecialDealCard extends StatelessWidget {
  ComtomSpecialDealCard({
    required this.imagePath,
    required this.buttonColor,
    required this.backgroundColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  AssetImage imagePath;
  Color buttonColor;
  Color backgroundColor;
  VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Special Deal for',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                'December',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              GestureDetector(
                child: Container(
                  width: 130,
                  height: 45,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                onTap: onPressed,
              ),
            ],
          )
        ],
      ),
    );
  }
}