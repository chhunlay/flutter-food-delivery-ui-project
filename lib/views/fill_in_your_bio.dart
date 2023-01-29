import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/payment_method.dart';
import 'package:intl/intl.dart';

class FillInYourBio extends StatefulWidget {
  FillInYourBio({Key? key}) : super(key: key);

  static const String routeName = '/fill_in_your_bio_page';

  @override
  State<FillInYourBio> createState() => _FillInYourBioState();
}

class _FillInYourBioState extends State<FillInYourBio> {
  TextEditingController _date = TextEditingController();

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
              Navigator.of(context).pushNamed('/sign_in_page');
            },
          ),
        ),
        title: Text(
          "Fill In Your Bio",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'This data will be displayed in your account profile for security'),
            //email
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20, left: 20),
                  //size TextField
                  hintText: 'Enter Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Nick Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20, left: 20),
                  //size TextField
                  hintText: 'Enter Nick Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20, left: 20),
                  //size TextField
                  hintText: 'Enter Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Gender",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20, left: 20),
                  // suffixIcon: Container(
                  //   // child: DropdownButton(
                  //   //   items: [],
                  //   //   onChanged: (){},
                  //   ),
                  // ),
                  hintText: 'Select gender',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Date of Birth",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: _date,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    padding: EdgeInsets.only(right: 20),
                    icon: Icon(Icons.calendar_month),
                    onPressed: () async {
                      DateTime? pickkedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      if (pickkedDate != null) {
                        setState(() {
                          _date.text =
                              DateFormat('MMMM DD, yyyy').format(pickkedDate);
                        });
                      }
                    },
                  ),
                  contentPadding: EdgeInsets.only(top: 20, left: 20),
                  //size TextField
                  hintText: 'Select date of birth',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20, left: 20),
                  //size TextField
                  hintText: 'Enter Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            //#######################################################
            SizedBox(
              height: 10,
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
                  Navigator.pushReplacementNamed(
                    context,
                    PaymentMethodPage.routeName,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
