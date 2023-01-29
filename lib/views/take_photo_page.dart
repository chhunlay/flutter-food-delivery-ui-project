import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/set_your_location_page.dart';
import 'package:flutter_food_delivery_app/views/upload_your_photo_page.dart';

class TakePhotoPage extends StatelessWidget {
  const TakePhotoPage({Key? key}) : super(key: key);

  static const String routeName = '/take_photo_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload your photo'),
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
              Navigator.pushReplacementNamed(context, UploadYourPhotoPage.routeName);
            },
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
                'This data will be displayed in your account profile for security'),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  height: 280,
                  width: 280,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img/chhunlay_anime02_blue.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 220,
                  top: 220,
                  child: Container(
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 210,
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
                  Navigator.pushReplacementNamed(context, SetYourLocationPage.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
