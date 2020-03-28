import 'package:bulk_buyers/screens/loginScreen.dart';
import 'package:bulk_buyers/signed_up_widget/signed_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/StyleGuide.dart';
import 'package:http/http.dart' as http;
import 'package:bulk_buyers/utils/constants/Constants.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = new GlobalKey<FormState>();
  String _userEmail;
  bool _isLoading = false;

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
                    "Forgot Password",
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
                    labelText: 'Enter Email',
                    // labelStyle: AppStyle.formLabel,

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                        BorderSide(color: AppTheme.whiteSwatch)),
                  ),
                  validator: (value) =>
                  value.isEmpty ? 'Email can\'t be empty' : null,
                  // autovalidate: true,
                  onSaved: (value) => _userEmail = value,
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: AppTheme.primarySwatch,
                onPressed: () async {validateAndLogin();},
                child: Text(
                  "Login",
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
                    "I think I remember my Password",
                    style: AppStyle.resetText,
                  ),
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }

  void validateAndLogin() {
    final form = _formKey.currentState;
    _formKey.currentState.save();
    if (form.validate()) {

      _resetRequest(_userEmail);

    } else {
      print("form is  invalid");
    }
  }

  _resetRequest(String userEmail) async {
    setState(() {
      _isLoading = true;
    });
    Map data = {
      'email': userEmail,

    };
    var jsonData = null;

    try{
      var reponse = await http.post('${Constants.BASE_URL}/reset', body: data);
      if( reponse.statusCode == 200){
        setState(() {
          _isLoading = false;
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => SignedUpWidget()),
                  (Route<dynamic> route) => false);

        });
      }
    }
    catch(ex){
      return null;
    }
  }
}
