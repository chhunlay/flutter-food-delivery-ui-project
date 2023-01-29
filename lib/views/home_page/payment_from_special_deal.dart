import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/home_page/promotion_page.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';

class PaymentMethodFromSpecialDeal extends StatelessWidget {
  const PaymentMethodFromSpecialDeal({Key? key}) : super(key: key);

  static const String routeName = '/payment_method_from_special_deal_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Navigator.pushReplacementNamed(context, PromotionPage.routeName);
            },
          ),
        ),
        title: Text(
          "Payment Method",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 90,
                        child: Image(
                          image: AssetImage('assets/img/paypal.png'),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        '+965696646',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 90,
                        child: Image(
                          image: AssetImage('assets/img/visa.png'),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        '3821 **** **** 58',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 90,
                        child: Image(
                          image: AssetImage('assets/img/payonner.png'),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        '4627 **** **** 58',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
