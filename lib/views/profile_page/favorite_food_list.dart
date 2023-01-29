import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_favorite_food_card.dart';
import '../../widgets/custom_testimonial_card.dart';
import '../home_page/home_page.dart';
import '../main_page.dart';

class FavoriteFoodList extends StatelessWidget {
  const FavoriteFoodList({Key? key}) : super(key: key);

  static const String routeName = '/favorite_food_list';

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
          "Favorite",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: 20,
          ),

          CustomSearchButtonAppBar(
            onPressed: () {},
          ),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/greeny_salad.png'),
              foodName: 'Greeny Salad',
              restaurantName: 'Circlo Resto',
              price: '\$12'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/fresh_salad.png'),
              foodName: 'Fresh Salad',
              restaurantName: 'Resto Food',
              price: '\$9'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/mixed_pasta.png'),
              foodName: 'Mixed Salad',
              restaurantName: 'Circlo Resto',
              price: '\$11'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/greeny_salad.png'),
              foodName: 'Greeny Salad',
              restaurantName: 'Circlo Resto',
              price: '\$12'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/fresh_salad.png'),
              foodName: 'Fresh Salad',
              restaurantName: 'Resto Food',
              price: '\$9'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/mixed_pasta.png'),
              foodName: 'Mixed Salad',
              restaurantName: 'Circlo Resto',
              price: '\$11'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/greeny_salad.png'),
              foodName: 'Greeny Salad',
              restaurantName: 'Circlo Resto',
              price: '\$12'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/fresh_salad.png'),
              foodName: 'Fresh Salad',
              restaurantName: 'Resto Food',
              price: '\$9'),
          SizedBox(
            height: 15,
          ),
          CustomFavoriteFoodCard(
              imagePath: AssetImage('assets/img/mixed_pasta.png'),
              foodName: 'Mixed Salad',
              restaurantName: 'Circlo Resto',
              price: '\$11'),
        ],
      ),
    );
  }
}
