
import 'package:flutter/material.dart';
import 'package:bulk_buyers/login_widget/login_widget.dart';


class ForgotPasswordFilledWidget extends StatelessWidget {
  
  void onLoginPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
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
                  "Check your email",
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
              margin: EdgeInsets.only(top: 29),
              child: Text(
                "Check your email for password reset instructions",
                style: TextStyle(
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontSize: 20,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ),
        Align(
          alignment: Alignment.topCenter,
            child: Container(
              width: 500,
              height: 50,
              margin: EdgeInsets.only(top: 40),
              child: FlatButton(
                onPressed: () => this.onLoginPressed(context),
                color: Color.fromARGB(255, 248, 96, 29),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "You can try to login now",
                  style: TextStyle(
                    fontSize: 20,
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