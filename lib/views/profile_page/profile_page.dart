import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/home_page/testimonial_list.dart';

import '../../widgets/custom_favorite_food_card.dart';
import '../../widgets/custom_testimonial_card.dart';
import 'favorite_food_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 350,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              image: AssetImage('assets/img/chhunlay_anime02_blue.png'),
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Member Gold',
                            style: TextStyle(color: Colors.yellow),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 590,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Chhun Lay',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('chhunlayflutter@gmail.com'),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.2),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.edit,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange[50]),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/img/dolar_payment.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "You have 4 vouchers",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favorite',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, FavoriteFoodList.routeName);
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
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
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
