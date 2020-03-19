import 'dart:convert';

import 'package:bulk_buyers/signed_up_widget/signed_up_widget.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/StyleGuide.dart';
import 'package:bulk_buyers/utils/constants/Constants.dart';
import 'package:bulk_buyers/utils/validation/Validations.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = new GlobalKey<FormState>();
  bool _isLoading = false;

  String _userEmail;
  String _userPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : Form(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    children: <Widget>[
                      //TODO: ADD Logo Image
                      Container(
                        width: 183,
                        height: 87,
                        margin: EdgeInsets.only(top: 28),
                        child: Image.asset(
                          "assets/images/img-20181004-wa0006-5.png",
                          fit: BoxFit.none,
                        ),
                      ),
                      //TODO: ADD LOGIN PAGE HEADING TEXT
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 27),
                          child: Text(
                            "Login",
                            style: AppStyle.display2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      //TODO: ADD LINE SEPREATOR
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 63,
                          height: 5,
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            color: AppTheme.primarySwatch,
                          ),
                          child: Container(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 45),
                      ),

                      //TODO: ADD EMAIL FIELD
                      Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: TextFormField(
                          style: AppStyle.formText,
                          autocorrect: false,
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            // labelStyle: AppStyle.formLabel,

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: AppTheme.whiteSwatch)),
                          ),
                          validator: (value) =>
                              value.isEmpty ? 'Email can\'t be empty' : null,
                          autovalidate: true,
                          onSaved: (value) => _userEmail = value,
                        ),
                      ),
                      //TODO:ADD PASSWORD FIELD
                      Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: TextFormField(
                          style: AppStyle.formText,
                          autocorrect: false,
                          maxLines: 1,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            // labelStyle: AppStyle.formLabel,

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: AppTheme.whiteSwatch)),
                          ),
                          validator: (value) =>
                              value.isEmpty ? 'Password can\'t be empty' : null,
                          autovalidate: true,
                          onSaved: (value) => _userPassword = value,
                        ),
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: AppTheme.primarySwatch,
                        onPressed: validateAndLogin,
                        child: Text(
                          "Login",
                          style: AppStyle.primaryButton,
                        ),
                      ),
                      Center(
                        child: FlatButton(
                          onPressed: () {},
                          color: AppTheme.transparentSwatch,
                          textColor: AppTheme.blueSwatch,
                          padding: EdgeInsets.all(0),
                          child: Text(
                            "Forgot Password?",
                            style: AppStyle.resetText,
                          ),
                        ),
                      ),
                      Center(
                        child: FlatButton(
                          onPressed: () {},
                          color: AppTheme.transparentSwatch,
                          textColor: AppTheme.blueSwatch,
                          padding: EdgeInsets.all(0),
                          child: Text(
                            "Don’t have an account? Create one now!",
                            style: AppStyle.resetText,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
    );
  }

  void validateAndLogin() {
    final form = _formKey.currentState;
    _formKey.currentState.save();
    if (form.validate()) {
      setState(() {
        _isLoading = true;
        print('formisow tring to send');
      });
      signin(_userEmail, _userPassword);
      print('$_userEmail, $_userPassword');
    } else {
      print("form is  invalid");
    }
  }

  signin(String userEmail, String userPassword) async {
    Map data = {
      'email': userEmail,
      'password': userPassword,
    };

    var jsonData = null;

    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var response =
          await http.post('${Constants.BASE_URL}/access', body: data);
      if (response.statusCode == 200) {
        print(response.body.toString());
        jsonData = json.decode(response.body);
        setState(() {
          _isLoading = false;
          sharedPreferences.setString("token", jsonData['token']);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => SignedUpWidget()),
              (Route<dynamic> route) => false);
        });
      } else {
        _isLoading = false;
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text("Check Internet Connection"),
                actions: <Widget>[
                  FlatButton(
                    child: Text('ok'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            });
      }
    } catch (ex) {
      return null;
    }
  }
}
