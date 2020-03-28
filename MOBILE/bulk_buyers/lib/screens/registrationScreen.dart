import 'dart:async';
import 'dart:convert';

import 'package:bulk_buyers/screens/loginScreen.dart';
import 'package:bulk_buyers/signed_up_widget/signed_up_widget.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/StyleGuide.dart';
import 'package:bulk_buyers/utils/constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bulk_buyers/utils/UIComponents/Buttons.dart' as btns;



class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreen createState() => _RegistrationScreen();
}

class _RegistrationScreen extends State<RegistrationScreen> {
  final _formKey = new GlobalKey<FormState>();
  bool _isLoading = false;
  String _fname;
  String _lname;
  String _email;
  String _password;
  int _phoneNumber;

  Timer _timer;
  int _start = 30;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: _isLoading ? Center(child: CircularProgressIndicator(),) : Form(
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
                      "Sign Up",
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

                //TODO: ADD FIRST NAME FIELD
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextFormField(
                    style: AppStyle.formText,
                    autocorrect: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      // labelStyle: AppStyle.formLabel,

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                          BorderSide(color: AppTheme.whiteSwatch)),
                    ),
                    validator: (value) =>
                    value.isEmpty ? 'First Name field can\'t be empty' : null,
                    // autovalidate: true,
                    onSaved: (value) => _fname = value,
                  ),
                ),
                //TODO: ADD LAST NAME FIELD
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextFormField(
                    style: AppStyle.formText,
                    autocorrect: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Last Name',

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                          BorderSide(color: AppTheme.whiteSwatch)),
                    ),
                    validator: (value) =>
                    value.isEmpty ? 'Last Name field can\'t be empty' : null,
                    // autovalidate: true,
                    onSaved: (value) => _lname = value,
                  ),
                ),
                //TODO: ADD EMAIL  FIELD
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: AppStyle.formText,
                    autocorrect: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Email Address',

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                          BorderSide(color: AppTheme.whiteSwatch)),
                    ),
                    validator: (value) =>
                    value.isEmpty ? 'Email field can\'t be empty' : null,
                    // autovalidate: true,
                    onSaved: (value) => _email = value,
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
                    value.isEmpty ? 'Password field can\'t be empty' : null,
                    //   autovalidate: true,
                    onSaved: (value) => _password = value,
                  ),
                ),
                //TODO: ADD PHONE NUMBER  FIELD
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: AppStyle.formText,
                    autocorrect: false,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      // labelStyle: AppStyle.formLabel,

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                          BorderSide(color: AppTheme.whiteSwatch)),
                    ),
                    validator: (value) =>
                    value.isEmpty ? 'Phone Number field can\'t be empty' : null,

                    onSaved: (value) => _phoneNumber = hashCode,
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: AppTheme.primarySwatch,
                  onPressed: () async {validateAndLogin();},
                  child: Text(
                    "Register",
                    style: AppStyle.primaryButton,
                  ),
                ),

                Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginScreen()),
                              (Route<dynamic> route) => false);
                    },
                    color: AppTheme.transparentSwatch,
                    textColor: AppTheme.blueSwatch,
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "I have an Account? Login here",
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

      _makePostRequest(_fname, _lname, _email, _password, _phoneNumber);

    } else {
      print("form is  invalid");
    }
  }

  _makePostRequest(String firstName, String lastName, String email, String password, int phoneNumber ) async {
    print("S");
    startTimer();
    setState(() {
      _isLoading = true;
    });
    Map data = {
      'email': email,
      'password': password,
      'name': firstName,
      'lname': lastName,
      'phone': phoneNumber
    };

    var jsonData = null;

    try {
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      var response =
      await http.post('${Constants.BASE_URL}/register', body: data);
      if (response.statusCode == 200) {
        print(response.body);
        jsonData = json.decode(response.body);
        setState(() {
          _isLoading = false;
          sharedPreferences.setString("token", jsonData['token']);
          final sp = sharedPreferences.getString("token");
          print("stored file is $sp");
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => SignedUpWidget()),
                  (Route<dynamic> route) => false);
        });
      }  if (response.statusCode == 401) {
        setState(() {
          _isLoading = false;
        });
        print(response.body);
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Ooops!'),
                content: Text("wrong Credentials"),
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
      return ex.toString();
    }
  }
  void startTimer(){
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec, (Timer timer) => setState(
          (){
        if(_start < 1) {

          timer.cancel();
          setState(() {
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
          });
        }
        else{
          _start = _start -1;
        }
      },
    ),
    );
  }
}
