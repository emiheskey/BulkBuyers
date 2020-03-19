import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static const TextStyle display1 = TextStyle(
    fontFamily: 'Helvetica',
    //color: Colors.black,
    color: Color.fromARGB(255, 112, 112, 112),
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
  );

  static const TextStyle display2 = TextStyle(
    fontFamily: 'Helvetica',
    color: AppTheme.darkSwatch,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1,
  );

  static final TextStyle heading = TextStyle(
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w900,
    fontSize: 34,
    color: Colors.white.withOpacity(0.8),
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.white.withOpacity(0.8),
  );
  static final TextStyle formText = TextStyle(
    color: AppTheme.formTextColor,
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static final TextStyle primaryButton = TextStyle(
    color: AppTheme.whiteSwatch,
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static final TextStyle formLabel = TextStyle(
    color: AppTheme.primarySwatch,
    fontFamily: 'Helvetica',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static final TextStyle resetText = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
}