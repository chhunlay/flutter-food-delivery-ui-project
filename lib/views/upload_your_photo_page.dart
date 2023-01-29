import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/payment_method.dart';
import 'package:flutter_food_delivery_app/views/take_photo_page.dart';

class UploadYourPhotoPage extends StatefulWidget {
  const UploadYourPhotoPage({Key? key}) : super(key: key);

  static const String routeName = '/upload_your_photo_page';

  @override
  State<UploadYourPhotoPage> createState() => _UploadYourPhotoPageState();
}

class _UploadYourPhotoPageState extends State<UploadYourPhotoPage> {
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
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.red,),
            onPressed: () {
              Navigator.pushReplacementNamed(context, PaymentMethodPage.routeName);
            },
          ),
        ),
        title: Text(
          "Upload your photo",
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
                  Navigator.pushReplacementNamed(context, TakePhotoPage.routeName);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Take Photo',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.folder,
                        size: 40,
                      ),
                    ),
                    Text(
                      'From Gallery',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
                ),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => UploadYourPhotoPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
