import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/order_page/payment_method_from_order.dart';

import 'deliver_to_home.dart';
import 'orders_page.dart';

class DeliverPage extends StatelessWidget {
  const DeliverPage({Key? key}) : super(key: key);

  static const String routeName = '/deliver_page';

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
              Navigator.pushReplacementNamed(context, OrdersPage.routeName);
            },
          ),
        ),
        title: Text(
          "Deliver to",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    // side: BorderSide(width: 1),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, DeliverToHome.routeName);
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.2),
                        ),
                        child: Icon(Icons.location_on, size: 40),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 35, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Odambang Mouy st.009',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  // side: BorderSide(width: 1),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                      ),
                      child: Icon(Icons.location_on, size: 40),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Office',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Sangke st.02',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
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
                          context, PaymentMethodFromOrder.routeName);
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
                          'Next',
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
