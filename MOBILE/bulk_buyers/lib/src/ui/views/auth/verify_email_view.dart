import 'package:bulk_buyers/src/ui/shared/app_colors.dart';
import 'package:bulk_buyers/src/ui/shared/font_styles.dart';
import 'package:bulk_buyers/src/ui/shared/ui_helpers.dart';
import 'package:bulk_buyers/src/ui/views/auth/login_view.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset(
          "assets/images/icon-ios-menu.png",
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/icon.png"),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          UIHelper.verticalSpaceMedium(),
          Center(child: UIHelper.confirm()),
          UIHelper.verticalSpaceSmall(),
          Center(
            child: Text("CONFIRM YOUR EMAIL", style: subHeading2),
          ),
          UIHelper.verticalSpaceSmall(),
          Center(child: Text("Please go to your email box and \n click on the confiramtion email \n that was sent to you. You need \n to confirm your email before \n you continue.", textAlign: TextAlign.center, style: subHeading3,),),
          UIHelper.verticalSpaceLarge(),
          Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 300,
                            height: 40,
                            margin: EdgeInsets.only(bottom: 20),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        transitionDuration:
                                        const Duration(milliseconds: 350),
                                        pageBuilder: (context, _, __) => LoginView()));
                              },
                              color: primarySwatch,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "LOGIN TO CONTINUE",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Roboto",
                                    color: whiteSwatch),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        )
        ],
      ),
    );
  }
}
