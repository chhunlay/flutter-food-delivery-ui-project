import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/verification_page.dart';

import 'congrate_reset_password.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({Key? key}) : super(key: key);

  static const String routeName = '/reset_password_page';

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool newPassword = true;
  bool confirmPassword = true;
  bool? isChecked = false;

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
              Navigator.pushReplacementNamed(context, VerificationPage.routeName);
            },
          ),
        ),
        title: Text(
          "Reset password",
          style: TextStyle(fontFamily: 'BalsamiqSans-Regular'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Crate a new password'),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "New password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: double.infinity,
              child: TextFormField(
                obscureText: newPassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => newPassword = !newPassword),
                    icon: Icon(
                        newPassword ? Icons.visibility : Icons.visibility_off),
                    color: Colors.red,
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Confirm new password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: double.infinity,
              child: TextFormField(
                obscureText: confirmPassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => confirmPassword = !confirmPassword),
                    icon: Icon(
                        confirmPassword ? Icons.visibility : Icons.visibility_off),
                    color: Colors.red,
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(36),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                //checkBox
                Checkbox(
                  activeColor: Colors.red,
                    value: isChecked,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool;
                      });
                    }),
                Text(
                  'Remember me',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
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
                  Navigator.pushReplacementNamed(context, CongrateResetPassword.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
