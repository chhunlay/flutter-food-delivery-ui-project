import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/home_page/payment_from_special_deal.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';
import 'package:flutter_food_delivery_app/views/home_page/popular_restaurant.dart';
import 'package:flutter_food_delivery_app/views/sign_in_page.dart';
import '../../widgets/custom_special_deal.dart';
import '../order_page/thank_for_ordering.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({Key? key}) : super(key: key);

  static const String routeName = '/promotion_page';

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
          "Promotion",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // SizedBox(height: 10,),
              ComtomSpecialDealCard(
                imagePath: AssetImage('assets/img/burgur.png'),
                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
                buttonColor: Colors.orange,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, PaymentMethodFromSpecialDeal.routeName);
                },
              ),
              SizedBox(height: 15,),
              ComtomSpecialDealCard(
                imagePath: AssetImage('assets/img/Pizza_01.png'),
                backgroundColor: Colors.orangeAccent,
                buttonColor: Colors.red,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, PaymentMethodFromSpecialDeal.routeName);
                },
              ),
              SizedBox(height: 15,),
              ComtomSpecialDealCard(
                imagePath: AssetImage('assets/img/burgur.png'),
                backgroundColor: Colors.greenAccent,
                buttonColor: Colors.orange,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, PaymentMethodFromSpecialDeal.routeName);
                },
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacementNamed(
                    //   context,
                    //   ThankForOrderingPage.routeName);
                  },
                  child: const Text("Checkout", style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
