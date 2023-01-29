import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';

import '../home_page/home_page.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  static const String routeName = '/order_history_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){Navigator.pushReplacementNamed(context, MainPage.routeName);},
          child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
              margin: EdgeInsets.all(7),
              child: Image(
                image: AssetImage('assets/img/food_logo.png'),
              )),
        ),
        title: Text(
          "Order History",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchButtonAppBar(
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              EcCustomFoodCard(
                  imagePath: AssetImage('assets/img/greeny_salad.png'),
                  foodName: 'Greeny Salad',
                  restaurantName: 'Circlo Resto',
                  price: '\$12',
                  activeStatus: 'Process',
                  bgColor: Colors.green),
              SizedBox(
                height: 20,
              ),
              EcCustomFoodCard(
                  imagePath: AssetImage('assets/img/meduim_salad.png'),
                  foodName: 'Medium Salad',
                  restaurantName: 'Circlo Resto',
                  price: '\$11',
                  activeStatus: 'Process',
                  bgColor: Colors.green),
              SizedBox(
                height: 20,
              ),
              EcCustomFoodCard(
                  imagePath: AssetImage('assets/img/fresh_salad.png'),
                  foodName: 'Fresh Salad',
                  restaurantName: 'Circlo Resto',
                  price: '\$9',
                  activeStatus: 'Completed',
                  bgColor: Colors.blue),
              SizedBox(
                height: 20,
              ),
              EcCustomFoodCard(
                  imagePath: AssetImage('assets/img/original_salad.png'),
                  foodName: 'Original Salad',
                  restaurantName: 'Haty Food',
                  price: '\$10',
                  activeStatus: 'Canceled',
                  bgColor: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

class EcCustomFoodCard extends StatelessWidget {
  EcCustomFoodCard({
    required this.imagePath,
    required this.price,
    required this.foodName,
    required this.restaurantName,
    required this.activeStatus,
    required this.bgColor,
    Key? key,
  }) : super(key: key);

  AssetImage imagePath;
  String foodName;
  String restaurantName;
  String price;
  String activeStatus;
  Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.orange[50]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image(image: imagePath),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 50, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  restaurantName,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  price,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          Container(
            height: 25,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26), color: bgColor),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                activeStatus,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
