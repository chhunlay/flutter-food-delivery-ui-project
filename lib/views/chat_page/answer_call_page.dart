import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page/completed_order_page.dart';

class AnswerCallingPage extends StatelessWidget {
  const AnswerCallingPage({Key? key}) : super(key: key);

  static const String routeName = '/answer_calling_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                top: 250,
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
                      'Chhun Lay',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '02:24',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (){
                          //
                          Navigator.pushReplacementNamed(context, CompletedOrderPage.routeName);
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red[50]),
                          child: Icon(Icons.cancel, color: Colors.red),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green[50]),
                          child: Icon(Icons.volume_up, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
