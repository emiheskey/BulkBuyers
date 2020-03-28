import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/StyleGuide.dart';
import 'package:flutter/material.dart';

class Buttons{
   final RaisedButton loginButton = RaisedButton(
    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)),
    color: AppTheme.primarySwatch,

    child: Text(
      "Login",
      style: AppStyle.primaryButton,
    ),
  );
}

