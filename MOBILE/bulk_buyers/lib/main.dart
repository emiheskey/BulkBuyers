
import 'package:bulk_buyers/login_widget/login_widget.dart';
import 'package:bulk_buyers/screens/loginScreen.dart';
import 'package:bulk_buyers/screens/registrationScreen.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:bulk_buyers/utils/constants/Constants.dart';

void main() {
  runApp(MyApp());
   SystemChrome.setPreferredOrientations(
           [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bulk Buyers',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.deepOrange,
        primaryColor: AppTheme.primarySwatch,
        primarySwatch: Colors.deepOrange,
        canvasColor: Color.fromARGB(242, 243, 243, 243),
        bottomAppBarTheme: BottomAppBarTheme(
          elevation: 0,
          color: Colors.blue
        )


      ),
      
      home: WelcomeWidget(title: 'Bulk Buyers Connect'),
    );
  }
}


class WelcomeWidget extends StatefulWidget {

  WelcomeWidget({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}
class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: AppTheme.whiteSwatch,
        decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage("assets/images/image-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}

class _WelcomeWidgetState extends State<WelcomeWidget> {



  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginWidget()));

  void onLearnMorePressed(BuildContext context) {

  }

  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: new Container(

        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 227,
                height: 108,
                margin: EdgeInsets.only(top: 80),
                child: Image.asset(
                  "assets/images/img-20181004-wa0006-3.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 40,
                    right: 0,
                    child: Container(
                      color: AppTheme.whiteSwatch,
                      height: 521,
                      child: Image.asset(
                        "assets/images/image-bg.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 185,
                    top: 56,
                    right: 222,
                    child: Opacity(
                      opacity: 0.6,
                      child: Container(
                        height: 528,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 239, 73, 0),
                        ),
                        child: Container(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 284,
                    top: 186,
                    right: 320,
                    child: Container(
                      height: 33,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
//                          Column(
//                            children: <Widget>[
//                              (
//                                child: Text(
//                                  "THis is a test"
//                                ),
//                              ),
//                            ],
//
//                          ),
//                          Align(
//                            alignment: Alignment.topLeft,
//                            child: Container(
//                              width: 128,
//                              height: 29,
////                              child: FlatButton(
////                                onPressed: () => this.onLearnMorePressed(context),
////                                color: Colors.black,
////                                textColor: Color.fromARGB(255, 255, 69, 0),
////                                padding: EdgeInsets.all(0),
////                                child: Text(
////                                  "Learn more",
////                                  style: TextStyle(
////                                    fontSize: 25,
////                                    fontFamily: "Roboto",
////                                    fontWeight: FontWeight.w700,
////                                  ),
////                                  textAlign: TextAlign.left,
////                                ),
////                              ),
//                            ),
//                          ),
//                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 3),
                              child: Image.asset(
                                "assets/images/icon-ionic-ios-arrow-dropright.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 21,
                    child: Container(
                      width: 272,
                      child: Text(
                       "Buy groceries in bulk at 10% - 25% below market price",

                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 24,
                          fontFamily: "Roboto",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 0,
                    right: 50,
                    bottom: 140,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Spacer(),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 500,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 20),
                            child: FlatButton(
                              onPressed: () => this.onViewPressed(context),
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 500,
                            height: 50,
                            child: ButtonTheme(
                              minWidth: double.infinity,
                              child: FlatButton(
                                onPressed: () => this.onViewTwoPressed(context),
                                color: Color.fromARGB(255, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                ),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        )],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
