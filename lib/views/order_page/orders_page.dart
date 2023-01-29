import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';

import 'deliver_page.dart';
import '../home_page/home_page.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  static const String routeName = '/orders_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            onPressed: () {
              Navigator.pushReplacementNamed(context, MainPage.routeName);
            },
          ),
        ),
        title: Text(
          "Order details",
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
                height: 15,
              ),
              CustomFoodCard(
                  imagePath: AssetImage('assets/img/original_salad.png'),
                  foodName: 'Original Salad',
                  restaurantName: 'Lovy Food',
                  price: '\$10'),
              SizedBox(
                height: 15,
              ),
              CustomFoodCard(
                  imagePath: AssetImage('assets/img/fresh_salad.png'),
                  foodName: 'Fresh Salad',
                  restaurantName: 'Recto Food',
                  price: '\$10'),
              SizedBox(
                height: 15,
              ),
              CustomFoodCard(
                  imagePath: AssetImage('assets/img/greeny_salad.png'),
                  foodName: 'Greeny Salad',
                  restaurantName: 'Circlo Resto',
                  price: '\$12'),
              SizedBox(
                height: 35,
              ),
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red[400]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          '\$32',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Delivery charge',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          '\$5',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Text(
                          '\$10',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: 320,
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          '\$27',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, DeliverPage.routeName);
                      },
                      child: Container(
                        height: 40,
                        width: 290,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: Colors.white),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Place my order',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFoodCard extends StatelessWidget {
  CustomFoodCard({
    required this.imagePath,
    required this.price,
    required this.foodName,
    required this.restaurantName,
    Key? key,
  }) : super(key: key);

  AssetImage imagePath;
  String foodName;
  String restaurantName;
  String price;

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
          Container(
            padding: EdgeInsets.only(top:3, bottom: 3),
            height: 70, width: 130,
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
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red[100]),
                child: Icon(
                  Icons.remove,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text('1'),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red[500]),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
