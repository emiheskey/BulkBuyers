
import 'package:flutter/material.dart';
import 'package:bulk_buyers/login_widget/login_widget.dart';
import 'package:bulk_buyers/forgot_password_widget/forgot_password_filled.dart';


class ForgotPasswordWidget extends StatelessWidget {
  
  void onIThinkIRememberMPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  void onEmailPasswordPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordFilledWidget()));
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
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 177,
                height: 84,
                margin: EdgeInsets.only(left: 87, top: 26),
                child: Image.asset(
                  "assets/images/img-20181004-wa0006-2.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 32),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontSize: 31,
                    fontFamily: "Roboto",
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 299,
              height: 45,
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
                decoration: InputDecoration(
                  hintText: "Enter email",
                  fillColor: Colors.black,
                  contentPadding: EdgeInsets.only(left: 10, top: 0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 2),
                  fontSize: 18,
                  fontFamily: "Arial",
                ),
                maxLines: 1,
                autocorrect: false,
              ),
            ),
          ),
        Align(
          alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 9),
              child: Text(
                "Please ensure you use the right email",
                style: TextStyle(
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontSize: 18,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ),
        Align(
          alignment: Alignment.topCenter,
            child: Container(
              width: 299,
              height: 55,
              margin: EdgeInsets.only(top: 38),
              child: FlatButton(
                onPressed: () => this.onEmailPasswordPressed(context),
                color: Color.fromARGB(255, 248, 96, 29),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Email my Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        ),
        Align(
          alignment: Alignment.topCenter,
            child: Container(
              width: 320,
              height: 21,
              margin: EdgeInsets.only(top: 43),
              child: FlatButton(
                onPressed: () => this.onIThinkIRememberMPressed(context),
                color: Colors.transparent,
                textColor: Color.fromARGB(255, 10, 75, 198),
                padding: EdgeInsets.all(0),
                child: Text(
                  "I think I remember my Password",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ),
          ],
        ),
      ),
    );
  }
}