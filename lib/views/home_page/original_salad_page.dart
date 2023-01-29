import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/home_page/testimonial_list.dart';

import '../../widgets/custom_testimonial_card.dart';

class OriginalSaladPage extends StatelessWidget {
  const OriginalSaladPage({Key? key}) : super(key: key);

  static const String routeName = '/original_salad_page';

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
                        'Original Salad',
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
                              'Yummie and lexat original salad made directly by our professional chef. Consists of a variety of selected quality vegetables and fruits: '),
                          Text(' - Kale '),
                          Text(' - Spinach  '),
                          Text(' - Melon  '),
                          Text(' - Strawberry  '),
                          Text(' - Lettuce  '),
                          Text(' - Cucumber  '),
                          Text(
                              'Served warmly for you. We also have extra seasoning for you to enjoy. Hope you like it!'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Testimonials',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, TestTimonialListPage.routeName);
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
                      SizedBox(height: 15,),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36),
                            color: Colors.red),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Add to card ',
                                  style:
                                  TextStyle(fontFamily: 'BalsamiqSans-Regular'),
                                ),
                                SizedBox(width: 10,),
                                Icon(Icons.shopping_basket_rounded, size: 20,),
                              ],
                            )),
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
