
import 'package:bulk_buyers/screens/loggedIn.dart';
import 'package:flutter/material.dart';
import 'package:bulk_buyers/forgot_password_widget/forgot_password_widget.dart';
import 'package:bulk_buyers/sign_up_widget/sign_up_widget.dart';
import 'package:bulk_buyers/signed_up_widget/signed_up_widget.dart';
import 'package:bulk_buyers/screens/forgotPasswordScreen.dart';


class LoginWidget extends StatelessWidget {

  void onComponent21Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoggedIn()));

  void onForgotPasswordPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));

  void onDonTHaveAnAccounPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),

        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Container(
              width: 183,
              height: 87,
              margin: EdgeInsets.only(top: 28),
              child: Image.asset(
                "assets/images/img-20181004-wa0006-5.png",
                fit: BoxFit.none,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 27),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontSize: 31,
                    fontFamily: "Helvetica",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 63,
                height: 5,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 120, 32),
                ),
                child: Container(),
              ),
            ),
            Container(
              width: 299,
              height: 50,
              margin: EdgeInsets.only(top: 46),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 172, 172, 172),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter email",
                  contentPadding: EdgeInsets.only(left: 10, top: 0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                  fontFamily: "Arial",
                ),
                maxLines: 1,
                autocorrect: false,
              ),
            ),
            Container(
              width: 299,
              height: 50,
              margin: EdgeInsets.only(top: 35),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 172, 172, 172),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  contentPadding: EdgeInsets.only(left: 10, top: 0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                  fontFamily: "Arial",
                ),
                obscureText: true,
                maxLines: 1,
                autocorrect: false,
              ),
            ),
            Container(
              width: 299,
              height: 55,
              margin: EdgeInsets.only(top: 41),
              child: FlatButton(
                onPressed: () => this.onComponent21Pressed(context),
                color: Color.fromARGB(255, 248, 96, 29),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Arial",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 250,
              height: 21,
              margin: EdgeInsets.only(top: 35),
              child: FlatButton(
                onPressed: () => this.onForgotPasswordPressed(context),
                color: Colors.transparent,
                textColor: Color.fromARGB(255, 10, 75, 198),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 319,
              height: 21,
              margin: EdgeInsets.only(top: 30),
              child: FlatButton(
                onPressed: () => this.onDonTHaveAnAccounPressed(context),
                color: Colors.transparent,
                textColor: Color.fromARGB(255, 10, 75, 198),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Don’t have an account? Create one now!",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}