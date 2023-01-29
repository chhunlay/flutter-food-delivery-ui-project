import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_page.dart';

class ThankForOrderingPage extends StatelessWidget {
  const ThankForOrderingPage({Key? key}) : super(key: key);

  static const String routeName = '/thank_for_ordering_page';

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
                          image: DecorationImage(
                              image: AssetImage('assets/img/congrate.png'))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Thank for ordering',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text('Enjoy your meal'),
                  ],
                ),
              ),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 35),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Go homepage',
                        style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, MainPage.routeName);
                      },
                    ),
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
