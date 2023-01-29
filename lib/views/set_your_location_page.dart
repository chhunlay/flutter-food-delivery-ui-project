import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/take_photo_page.dart';

import 'detail_location_page.dart';

class SetYourLocationPage extends StatelessWidget {
  const SetYourLocationPage({Key? key}) : super(key: key);

  static const String routeName = '/set_your_location_page';

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
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.red,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, TakePhotoPage.routeName);
            },
          ),
        ),
        title: Text(
          "Set your location",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
                'This data will be displayed in your account profile for security'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, DetailLocationPage.routeName);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.red[100],
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.location_on,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Set your location',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 350,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
