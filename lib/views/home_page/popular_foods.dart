import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_details_popular_foods.dart';
import '../../widgets/food_category.dart';
import 'home_page.dart';
import '../main_page.dart';
import 'original_salad_page.dart';

class PopularFoodsPage extends StatelessWidget {
  const PopularFoodsPage({Key? key}) : super(key: key);

  static const String routeName = '/popular_foods_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Popular Foods",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: 15,
          ),
          CustomSearchButtonAppBar(
            onPressed: () {},
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
              price: '\$17',
              restaurantName: 'Lovy Food',
              foodName: 'Original Salad',
              imagePath: AssetImage('assets/img/original_salad.png'),
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
              foodName: 'Ice Cream   ',
              imagePath: AssetImage('assets/img/yummy_ice_cream.png'),
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
              price: '\$29',
              restaurantName: 'Haty Food',
              foodName: 'Vegan Special',
              imagePath: AssetImage('assets/img/vegan_special.png'),
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
              price: '\$18',
              restaurantName: 'Recto Food',
              foodName: 'Mixed Pasta',
              imagePath: AssetImage('assets/img/mixed_pasta.png'),
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
              price: '\$17',
              restaurantName: 'Lovy Food',
              foodName: 'Original Salad',
              imagePath: AssetImage('assets/img/original_salad.png'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustomPopularFoodCard(
            price: '\$10',
            restaurantName: 'Cloudy Resto',
            foodName: 'Fresh Salad ',
            imagePath: AssetImage('assets/img/fresh_salad.png'),
          ),
          SizedBox(
            height: 15,
          ),
          CustomPopularFoodCard(
            price: '\$11',
            restaurantName: 'Circlo Rest',
            foodName: 'Ice Cream   ',
            imagePath: AssetImage('assets/img/yummy_ice_cream.png'),
          ),
          SizedBox(
            height: 15,
          ),
          CustomPopularFoodCard(
            price: '\$29',
            restaurantName: 'Haty Food',
            foodName: 'Vegan Special',
            imagePath: AssetImage('assets/img/vegan_special.png'),
          ),
          SizedBox(
            height: 15,
          ),
          CustomPopularFoodCard(
            price: '\$18',
            restaurantName: 'Recto Food',
            foodName: 'Mixed Pasta',
            imagePath: AssetImage('assets/img/mixed_pasta.png'),
          ),

        ],
      ),
    );
  }
}
