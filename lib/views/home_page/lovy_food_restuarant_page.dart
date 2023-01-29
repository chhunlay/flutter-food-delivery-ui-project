
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/home_page/testimonial_list.dart';

import '../../widgets/custom_testimonial_card.dart';
import '../../widgets/food_category.dart';

class LovyFoodRestaurantPage extends StatelessWidget {
  const LovyFoodRestaurantPage({Key? key}) : super(key: key);

  static const String routeName = '/lovy_food_restaurant_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              image: AssetImage('assets/img/original_salad_bg.png'),
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
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
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Popular',
                            style: TextStyle(color: Colors.green),
                          )),
                    ),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 610,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lovy Food Restaurant',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('3 km'),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.star_half,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('4.8 rating'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'We are one of the best restaurants in the city of Surabaya with years of experience. We serve a lot of quality food cooked directly by professional chefs. Hope you like it!'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Food',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pushReplacementNamed(
                          //     context, TestTimonialListPage.routeName);
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomLovyFoodRestarantCard(
                          imagePath: AssetImage('assets/img/burgur.png'),
                          name: 'Hamburger',
                          price: '\$12',
                        ),
                        SizedBox(width: 15,),
                        CustomLovyFoodRestarantCard(
                          imagePath: AssetImage('assets/img/burgur.png'),
                          name: 'Hamburger',
                          price: '\$12',
                        ),
                        SizedBox(width: 15,),
                        CustomLovyFoodRestarantCard(
                          imagePath: AssetImage('assets/img/burgur.png'),
                          name: 'Hamburger',
                          price: '\$12',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Testimonials',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, TestTimonialListPage.routeName);
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTestimonialsCard(
                    impagePath:
                    AssetImage('assets/img/chhunlay_anime02_blue.png'),
                    name: 'Chhun Lay',
                    date: '24 December 2022',
                    status: 'Extraordinary! love it too much!',
                    starNumber: '5',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTestimonialsCard(
                    impagePath:
                    AssetImage('assets/img/sev_thorth.jpg'),
                    name: 'Sev Thorth',
                    date: '20 January 2023',
                    status: 'Extraordinary! love it too much!',
                    starNumber: '5',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class CustomLovyFoodRestarantCard extends StatelessWidget {
  CustomLovyFoodRestarantCard({
    required this.imagePath,
    required this.name,
    required this.price,
    Key? key,
  }) : super(key: key);

  AssetImage imagePath;
  String name;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[100]),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            price,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
