import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/upload_your_photo_page.dart';

import 'fill_in_your_bio.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  static const String routeName = '/payment_method_page';

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(
          width: 10, height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor.withOpacity(0.2),
          ),
          margin: EdgeInsets.all(7),
          child: IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Colors.red,),
            onPressed: (){
              Navigator.pushReplacementNamed(context, FillInYourBio.routeName);
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
            Text(
                'This data will be displayed in your account profile for security'),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
                onPressed: () {},
                child: SizedBox(
                  height: 70,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/img/paypal.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  // side: BorderSide(width: 1),
                ),
                onPressed: () {},
                child: SizedBox(
                  height: 70,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/img/visa.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  // side: BorderSide(width: 1),
                ),
                onPressed: () {},
                child: SizedBox(
                  height: 70,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/img/payonner.png'),
                  ),
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
                onPressed: () {
                  Navigator.pushReplacementNamed(context, UploadYourPhotoPage.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
