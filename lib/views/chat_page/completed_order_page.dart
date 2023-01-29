import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page/please_rate_the_menu.dart';

import 'answer_call_page.dart';

class CompletedOrderPage extends StatelessWidget {
  const CompletedOrderPage({Key? key}) : super(key: key);

  static const String routeName = '/completed_order_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/background_main_page.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 10,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, AnswerCallingPage.routeName);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[100]),
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.red,),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 90,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.9),
                                width: 5),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/img/chhunlay_anime02_blue.png'))),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Thank you!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.red),
                      ),
                      Text(
                        'Order completed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.red),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        'Please rate the driver',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: Theme.of(context).primaryColor,
                          ),
                          Icon(
                            Icons.star_border,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.edit,
                                  color: Colors.red,
                                ),
                                contentPadding:
                                    EdgeInsets.only(top: 20, left: 20),
                                hintText: 'Leave feedback ... ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    fontFamily: 'BalsamiqSans-Regular'),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, PleaseRateTheMenu.routeName);
                              },
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
