import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/home_page/original_salad_page.dart';
import 'package:flutter_food_delivery_app/views/home_page/payment_from_special_deal.dart';
import 'package:flutter_food_delivery_app/views/home_page/popular_foods.dart';
import 'package:flutter_food_delivery_app/views/home_page/popular_restaurant.dart';
import 'package:flutter_food_delivery_app/views/home_page/promotion_page.dart';
import '../../widgets/custom_details_popular_foods.dart';
import '../../widgets/custom_special_deal.dart';
import '../../widgets/food_category.dart';
import 'lovy_food_restuarant_page.dart';
import 'notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: Image(
              image: AssetImage('assets/img/food_logo.png'),
            )),
        title: Text(
          "Hello, Chhun Lay!",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Container(
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey[100],
              ),
              margin: EdgeInsets.all(7),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, NotificationPage.routeName);
                },
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CustomSearchButtonAppBar(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, PromotionPage.routeName);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                ComtomSpecialDealCard(
                  imagePath: AssetImage('assets/img/burgur.png'),
                  backgroundColor:
                      Theme.of(context).primaryColor.withOpacity(0.9),
                  buttonColor: Colors.orange,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, PaymentMethodFromSpecialDeal.routeName);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Restaurant',
                      style: TextStyle(fontSize: 20),
                    ),
                    GestureDetector(
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        //route to popular restaurant page
                        Navigator.pushReplacementNamed(
                            context, PopularRestaurant.routeName);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LovyFoodRestaurantPage.routeName);
                        },
                        child: CustomFoodCategory(
                          imagePath: AssetImage('assets/img/lovy_food.png'),
                          title: 'Lovy Food',
                          subTitle: '10 mins',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LovyFoodRestaurantPage.routeName);
                        },
                        child: CustomFoodCategory(
                          imagePath: AssetImage('assets/img/cloudy_resto.png'),
                          title: 'Cloudy Resto',
                          subTitle: '14 mins',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LovyFoodRestaurantPage.routeName);
                        },
                        child: CustomFoodCategory(
                          imagePath: AssetImage('assets/img/circle_resto.png'),
                          title: 'Circle Resto',
                          subTitle: '11 mins',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Foods',
                      style: TextStyle(fontSize: 20),
                    ),
                    GestureDetector(
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, PopularFoodsPage.routeName);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, OriginalSaladPage.routeName);
                        },
                        child: CustomPopularFoodCard(
                          price: '\$17',
                          restaurantName: 'Lovy Food',
                          foodName: 'Original Salad',
                          imagePath:
                              AssetImage('assets/img/original_salad.png'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, OriginalSaladPage.routeName);
                        },
                        child: CustomPopularFoodCard(
                          price: '\$11',
                          restaurantName: 'Circlo Rest',
                          foodName: 'Yummie Ice Cream   ',
                          imagePath:
                              AssetImage('assets/img/yummy_ice_cream.png'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, OriginalSaladPage.routeName);
                        },
                        child: CustomPopularFoodCard(
                          price: '\$10',
                          restaurantName: 'Cloudy Resto',
                          foodName: 'Fresh Salad ',
                          imagePath: AssetImage('assets/img/fresh_salad.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //
    );
  }
}

class CustomSearchButtonAppBar extends StatelessWidget {
  CustomSearchButtonAppBar({
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36),
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('Search'),
              Spacer(),
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Theme.of(context).primaryColor.withOpacity(0.1)),
          margin: EdgeInsets.all(7),
          child: IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.red,
            ),
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
