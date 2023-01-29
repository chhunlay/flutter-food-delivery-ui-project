import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/sign_in_page.dart';
import 'package:flutter_food_delivery_app/views/verification_page.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  static const String routeName = '/forget_password_page';

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
              Navigator.pushReplacementNamed(context, SignInPage.routeName);
            },
          ),
        ),
        title: Text(
          "Forgot password?",
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
                    Navigator.pushReplacementNamed(context, VerificationPage.routeName);
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
                        child: Icon(Icons.sms, size: 40),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 35, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'via SMS:',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '+85596******6',
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
                      child: Icon(Icons.mail, size: 40),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'via Email:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'ch***lay@mnussmos.edu.kh',
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
              height: 250,
            ),
            SizedBox(
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
