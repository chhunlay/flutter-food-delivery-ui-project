import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_history.dart';

class PaymentMethodFromOrder extends StatelessWidget {
  const PaymentMethodFromOrder({Key? key}) : super(key: key);

  static const String routeName = '/payment_method_from_order_page';

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
              Navigator.of(context).pushNamed('/deliver_page');
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
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red[400]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        '\$32',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Delivery charge',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text(
                        '\$5',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        '\$10',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: 320,
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Text(
                        '\$27',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, OrderHistoryPage.routeName);
                    },
                    child: Container(
                      height: 40,
                      width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.white),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Order now',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
