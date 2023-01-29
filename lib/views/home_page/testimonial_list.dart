import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/profile_page/profile_page.dart';

import '../../widgets/custom_testimonial_card.dart';
import '../main_page.dart';

class TestTimonialListPage extends StatelessWidget {
  const TestTimonialListPage({Key? key}) : super(key: key);

  static const String routeName = '/testimonial_list_page';

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
          "Testimonials",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: 20,
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
            height: 20,
          ),
          CustomTestimonialsCard(
            impagePath:
            AssetImage('assets/img/sev_thorth.jpg'),
            name: 'Sev Thorth',
            date: '28 January 2023',
            status: 'Wow!',
            starNumber: '5',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTestimonialsCard(
            impagePath:
            AssetImage('assets/img/albert einstein.jpg'),
            name: 'Albert Einstein',
            date: '24 December 2022',
            status: 'Extraordinary! love it too much!',
            starNumber: '5',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTestimonialsCard(
            impagePath:
            AssetImage('assets/img/aldof_hitler.jpg'),
            name: 'Aldof Hitler',
            date: '24 December 2022',
            status: 'Extraordinary! love it too much!',
            starNumber: '5',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTestimonialsCard(
            impagePath:
            AssetImage('assets/img/sev_thorth.jpg'),
            name: 'Sev Thorth',
            date: '28 January 2023',
            status: 'Wow!',
            starNumber: '5',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTestimonialsCard(
            impagePath:
            AssetImage('assets/img/albert einstein.jpg'),
            name: 'Albert Einstein',
            date: '24 December 2022',
            status: 'Extraordinary! love it too much!',
            starNumber: '5',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTestimonialsCard(
            impagePath:
            AssetImage('assets/img/aldof_hitler.jpg'),
            name: 'Aldof Hitler',
            date: '24 December 2022',
            status: 'Extraordinary! love it too much!',
            starNumber: '5',
          ),
          SizedBox(
            height: 20,
          ),

        ],
      ),
    );
  }
}
