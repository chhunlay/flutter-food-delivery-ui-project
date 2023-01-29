import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';
import 'package:flutter_food_delivery_app/views/home_page/promotion_page.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/food_category.dart';
import 'home_page.dart';
import 'lovy_food_restuarant_page.dart';

class PopularRestaurant extends StatelessWidget {
  const PopularRestaurant({Key? key}) : super(key: key);

  static const String routeName = '/pupular_restaurant_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          leading: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.red[100],
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
            "Popular Restaurant",
            style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 5)),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: CustomSearchButtonAppBar(
              onPressed: () {},
            ),
          ),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 10)),
        SliverGrid.count(
          crossAxisCount: 2,

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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, LovyFoodRestaurantPage.routeName);
              },
              child: CustomFoodCategory(
                imagePath: AssetImage('assets/img/haty_food.png'),
                title: 'Haty Food',
                subTitle: '16 mins',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, LovyFoodRestaurantPage.routeName);
              },
              child: CustomFoodCategory(
                imagePath: AssetImage('assets/img/hearthy_resto.png'),
                title: 'Hearthy Resto',
                subTitle: '18 mins',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, LovyFoodRestaurantPage.routeName);
              },
              child: CustomFoodCategory(
                imagePath: AssetImage('assets/img/recto_food.png'),
                title: 'Recto Food',
                subTitle: '15 mins',
              ),
            ),
            CustomFoodCategory(
              imagePath: AssetImage('assets/img/lovy_food.png'),
              title: 'Lovy Food',
              subTitle: '10 mins',
            ),
            CustomFoodCategory(
              imagePath: AssetImage('assets/img/cloudy_resto.png'),
              title: 'Cloudy Resto',
              subTitle: '14 mins',
            ),
            CustomFoodCategory(
              imagePath: AssetImage('assets/img/circle_resto.png'),
              title: 'Circle Resto',
              subTitle: '11 mins',
            ),
            CustomFoodCategory(
              imagePath: AssetImage('assets/img/haty_food.png'),
              title: 'Haty Food',
              subTitle: '16 mins',
            ),
            CustomFoodCategory(
              imagePath: AssetImage('assets/img/hearthy_resto.png'),
              title: 'Hearthy Resto',
              subTitle: '18 mins',
            ),
            CustomFoodCategory(
              imagePath: AssetImage('assets/img/recto_food.png'),
              title: 'Recto Food',
              subTitle: '15 mins',
            ),
          ],
        ),
      ],
    ));
  }
}
