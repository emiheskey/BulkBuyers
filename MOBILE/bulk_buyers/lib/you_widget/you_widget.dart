
import 'package:flutter/material.dart';
import 'package:bulk_buyers/order_history_widget/order_history.dart';


class YouWidget extends StatelessWidget {
  
  void onComponent171Pressed(BuildContext context) {
  
  }
  
  void onComponent161Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Positioned(
              left: 0,
              right: -5,
              bottom: -1,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 244, 248),
                ),
                child: Container(),
              ),
            ),
            Positioned(
              left: 0,
              top: 40,
              right: 0,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 684,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(16, 0, 0, 0),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                    ),
                    child: Container(),
                  ),
                  Spacer(),
                  Container(
                    height: 66,
                    margin: EdgeInsets.only(left: 32, right: 7),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 33,
                            height: 48,
                            margin: EdgeInsets.only(bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 27,
                                    height: 30,
                                    margin: EdgeInsets.only(left: 3, bottom: 4),
                                    child: Image.asset(
                                      "assets/images/icon-feather-home-2.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 92, 151, 247),
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 33,
                            height: 46,
                            margin: EdgeInsets.only(left: 48, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 33,
                                    height: 32,
                                    child: Image.asset(
                                      "assets/images/icon-feather-shopping-cart.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 9),
                                    child: Text(
                                      "Cart",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 151, 247),
                                        fontSize: 12,
                                        fontFamily: "Roboto",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 52,
                            height: 45,
                            margin: EdgeInsets.only(right: 49, bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 31,
                                    height: 28,
                                    margin: EdgeInsets.only(right: 1, bottom: 3),
                                    child: Image.asset(
                                      "assets/images/icon-feather-heart-3.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Wish List ",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 92, 151, 247),
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 72,
                            height: 66,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.transparent,
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius: BorderRadius.all(Radius.circular(11)),
                            ),
                            child: Container(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -1,
              top: -1,
              right: -1,
              bottom: 39,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 82,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Container(),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 25,
                      height: 27,
                      margin: EdgeInsets.only(right: 31),
                      child: Image.asset(
                        "assets/images/icon-feather-user.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 13,
              right: 21,
              bottom: 18,
              child: Container(
                width: 53,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 53,
                        height: 55,
                        child: Image.asset(
                          "assets/images/icon.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 11),
                        child: Text(
                          "You",
                          style: TextStyle(
                            color: Color.fromARGB(255, 252, 84, 85),
                            fontSize: 12,
                            fontFamily: "Roboto",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -1,
              top: 19,
              right: 0,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 42,
                      height: 34,
                      margin: EdgeInsets.only(left: 24),
                      child: Image.asset(
                        "assets/images/icon-feather-arrow-left.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 39,
                    margin: EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 21),
                            child: Text(
                              "You",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 2,
                          child: Image.asset(
                            "assets/images/line-copy-6.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 115,
                      height: 27,
                      margin: EdgeInsets.only(left: 23, top: 25),
                      child: FlatButton.icon(
                        icon: Image.asset("assets/images/list.png",),
                        label: Text(
                          "My Orders",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                          ),
                          textAlign: TextAlign.left,
                        ),
                        onPressed: () => this.onComponent161Pressed(context),
                        color: Colors.transparent,
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 126,
                      height: 19,
                      margin: EdgeInsets.only(left: 23, top: 31),
                      child: FlatButton.icon(
                        icon: Image.asset("assets/images/like-1.png",),
                        label: Text(
                          "My Wish list",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                          ),
                          textAlign: TextAlign.left,
                        ),
                        onPressed: () => this.onComponent171Pressed(context),
                        color: Colors.transparent,
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 126,
                      height: 20,
                      margin: EdgeInsets.only(left: 24, top: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                      "assets/images/path-3968.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    child: Image.asset(
                                      "assets/images/path-3969.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 1),
                            child: Text(
                              "My Account",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                letterSpacing: -0.053,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 232,
                      height: 20,
                      margin: EdgeInsets.only(left: 24, top: 40),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 9,
                                  child: Container(
                                    width: 3,
                                    height: 14,
                                    child: Image.asset(
                                      "assets/images/path-4730.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                      "assets/images/path-4731.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            "About Bulk Buyers Connect",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              letterSpacing: -0.053,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 133,
                      height: 21,
                      margin: EdgeInsets.only(left: 23, top: 39),
                      child: Row(
                        children: [
                          Container(
                            width: 21,
                            height: 21,
                            child: Image.asset(
                              "assets/images/icon-ionic-ios-help-circle-outline.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "How it works",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              letterSpacing: -0.053,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 141,
                      height: 22,
                      margin: EdgeInsets.only(left: 24, top: 39),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              "assets/images/icon-ionic-ios-send.png",
                              fit: BoxFit.none,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 1),
                            child: Text(
                              "Refer-A-Friend",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 16,
                                letterSpacing: -0.053,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 186,
                      height: 21,
                      margin: EdgeInsets.only(left: 24, top: 37),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    width: 20,
                                    height: 17,
                                    child: Image.asset(
                                      "assets/images/path-4734.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  child: Container(
                                    width: 3,
                                    height: 15,
                                    child: Image.asset(
                                      "assets/images/path-4735.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Logout your account",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              letterSpacing: -0.053,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 17,
                      height: 15,
                      margin: EdgeInsets.only(right: 112),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 92, 151, 247),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Container(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 116,
              bottom: 8,
              child: Text(
                "2\n",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 10,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}