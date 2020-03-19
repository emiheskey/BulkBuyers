
import 'package:bulk_buyers/models/RegisterFactoryModel.dart';
import 'package:bulk_buyers/utils/constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:bulk_buyers/login_widget/login_widget.dart';
import 'package:bulk_buyers/signed_up_widget/signed_up_widget.dart';


class SignUpWidget extends StatelessWidget {
final Future<RegisterFactory> register;
SignUpWidget({this.register});

//Text Controllers to handle Inputs 
TextEditingController _emailController = new TextEditingController();
TextEditingController _passwordController = new TextEditingController();
TextEditingController _firstNameController = new TextEditingController();
TextEditingController _lastNameController = new TextEditingController();
TextEditingController _phoneController = new TextEditingController();


  void onComponent31Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SignedUpWidget()));
  
  void onHaveAnAccountLogPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 191,
                height: 91,
                margin: EdgeInsets.only(top: 17),
                child: Image.asset(
                  "assets/images/img-20181004-wa0006.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color.fromARGB(255, 112, 112, 112),
                  fontSize: 31,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
            child: Container(
              width: 63,
              height: 5,
              margin: EdgeInsets.only(top: 15, right: 0),
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
                height: 50,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: Color.fromARGB(255, 172, 172, 172),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    hintText: "First name",
                    contentPadding: EdgeInsets.only(left: 10, top: 0),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color.fromARGB(255, 225, 225, 225),
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
                width: 299,
                height: 50,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: Color.fromARGB(255, 172, 172, 172),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    hintText: "Last name",
                    contentPadding: EdgeInsets.only(left: 10, top: 0),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
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
              width: 299,
              height: 50,
              margin: EdgeInsets.only(top: 20, right: 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 172, 172, 172),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email address",
                  contentPadding: EdgeInsets.only(left: 10, top: 0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
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
              width: 299,
              height: 50,
              margin: EdgeInsets.only(top: 20, right: 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 172, 172, 172),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  contentPadding: EdgeInsets.only(left: 10, top: 0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontFamily: "Arial",
                ),
                obscureText: true,
                maxLines: 1,
                autocorrect: false,
              ),
            ),
            ),

            Align(
              alignment: Alignment.topCenter,
            child: Container(
              width: 299,
              height: 50,
              margin: EdgeInsets.only(top: 20, right: 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 172, 172, 172),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Phone number",
                  contentPadding: EdgeInsets.only(left: 10, top: 0),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
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
                width: 299,
                height: 55,
                margin: EdgeInsets.only(top: 20),
                child: FlatButton(
                  onPressed: () async{
                    RegisterFactory newRegistration = new RegisterFactory(email: _emailController.text, firstName: _firstNameController.text, lastName: _lastNameController.text, password: _passwordController.text, phone: _phoneController.hashCode);
                  },
                 // onPressed: () => this.onComponent31Pressed(context),
                  color: Color.fromARGB(255, 248, 96, 29),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Arial",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
            child: Container(
              width: 250,
              height: 21,
              margin: EdgeInsets.only(top: 20),
              child: FlatButton(
                onPressed: () => this.onHaveAnAccountLogPressed(context),
                color: Colors.transparent,
                textColor: Color.fromARGB(255, 62, 106, 226),
                padding: EdgeInsets.all(0),
                child: Text(
                  "Have an account? Login here",
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
