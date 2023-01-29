import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/sign_in_page.dart';

import 'main_page.dart';

class GetStartedPageArguments {
  final String title;
  final String description;

  GetStartedPageArguments({required this.title, required this.description});
}

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  static const String routeName = '/get_started';
  final GetStartedPageArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/get_started_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Foode ${arguments.title}",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Text(
                      "The best food ordering and delivery app of the century",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            SignInPage.routeName,
                          );
                        },
                        child: const Text("Get Started", style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
