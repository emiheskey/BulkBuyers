
import 'package:flutter/material.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';


class WishlistWidget extends StatelessWidget {
  
  void onViewFourPressed(BuildContext context) {
  
  }
  
  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));
  
  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onComponent61Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));
  
  void onViewFivePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
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
              left: -1,
              top: 44,
              right: 1,
              bottom: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 684,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 241, 241),
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
                    margin: EdgeInsets.only(left: 23, right: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 60,
                            height: 57,
                            margin: EdgeInsets.only(bottom: 9),
                            child: FlatButton(
                              onPressed: () => this.onViewPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-home-2.png",),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 69,
                            height: 66,
                            margin: EdgeInsets.only(left: 6),
                            child: FlatButton(
                              onPressed: () => this.onViewTwoPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-shopping-cart.png",),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Cart",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 90,
                            height: 66,
                            margin: EdgeInsets.only(right: 34),
                            child: FlatButton(
                              onPressed: () => this.onViewFourPressed(context),
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(11)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Text("",),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 51,
                            height: 52,
                            margin: EdgeInsets.only(bottom: 10),
                            child: FlatButton(
                              onPressed: () => this.onViewThreePressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-user-2.png",),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "You",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
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
              child: Container(
                height: 82,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                child: Container(),
              ),
            ),
            Positioned(
              left: 22,
              top: 19,
              child: Container(
                width: 42,
                height: 33,
                child: Image.asset(
                  "assets/images/icon-ionic-ios-menu.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Positioned(
              left: -1,
              top: 13,
              right: 0,
              bottom: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 53,
                      height: 55,
                      margin: EdgeInsets.only(right: 21),
                      child: Image.asset(
                        "assets/images/icon.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 39,
                    margin: EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 21),
                            child: Text(
                              "Your Wish List",
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
                  Container(
                    height: 116,
                    margin: EdgeInsets.only(left: 16, top: 8, right: 14),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(15, 0, 0, 0),
                          offset: Offset(0, 2),
                          blurRadius: 32,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          right: 18,
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Positioned(
                          left: 106,
                          top: 10,
                          right: 11,
                          bottom: 10,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 117,
                                  height: 70,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        child: Text(
                                          "Cow meat (Half)",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 16,
                                            fontFamily: "Roboto",
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        bottom: 0,
                                        child: Container(
                                          width: 53,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Opacity(
                                                  opacity: 0.68,
                                                  child: Text(
                                                    "N32,000",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      fontSize: 14,
                                                      fontFamily: "Roboto",
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Opacity(
                                                  opacity: 0.3,
                                                  child: Text(
                                                    "BEEF",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      fontSize: 12,
                                                      letterSpacing: 0.6,
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
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 26,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 1),
                                            stops: [
                                              0,
                                              1,
                                            ],
                                            colors: [
                                              Color.fromARGB(255, 168, 222, 28),
                                              Color.fromARGB(255, 80, 172, 2),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(13)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              height: 19,
                                              margin: EdgeInsets.only(left: 4, right: 3),
                                              child: Image.asset(
                                                "assets/images/ic-add-48px.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(0.5, 0),
                                            end: Alignment(0.5, 1),
                                            stops: [
                                              0,
                                              1,
                                            ],
                                            colors: [
                                              Color.fromARGB(255, 168, 222, 28),
                                              Color.fromARGB(255, 80, 172, 2),
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(13)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              height: 19,
                                              margin: EdgeInsets.only(left: 4, right: 3),
                                              child: Image.asset(
                                                "assets/images/ic-add-48px-2.png",
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 116,
                    margin: EdgeInsets.only(left: 16, top: 11, right: 14),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(15, 0, 0, 0),
                          offset: Offset(0, 2),
                          blurRadius: 32,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          top: 10,
                          right: 11,
                          bottom: 10,
                          child: Container(
                            width: 26,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        stops: [
                                          0,
                                          1,
                                        ],
                                        colors: [
                                          Color.fromARGB(255, 168, 222, 28),
                                          Color.fromARGB(255, 80, 172, 2),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: 19,
                                          margin: EdgeInsets.only(left: 4, right: 3),
                                          child: Image.asset(
                                            "assets/images/ic-add-48px.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        stops: [
                                          0,
                                          1,
                                        ],
                                        colors: [
                                          Color.fromARGB(255, 168, 222, 28),
                                          Color.fromARGB(255, 80, 172, 2),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(13)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: 19,
                                          margin: EdgeInsets.only(left: 4, right: 3),
                                          child: Image.asset(
                                            "assets/images/ic-add-48px-2.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 18,
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 306,
                      height: 42,
                      margin: EdgeInsets.only(top: 194, right: 32),
                      child: FlatButton(
                        onPressed: () => this.onViewFivePressed(context),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 280,
                      height: 42,
                      margin: EdgeInsets.only(bottom: 62),
                      child: FlatButton(
                        onPressed: () => this.onComponent61Pressed(context),
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(19)),
                        ),
                        textColor: Color.fromARGB(255, 252, 84, 85),
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "GO TO SHOP",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Roboto",
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 31,
                      height: 28,
                      margin: EdgeInsets.only(right: 129, bottom: 3),
                      child: Image.asset(
                        "assets/images/icon-feather-heart.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 128),
                      child: Text(
                        "Wish List ",
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
            Positioned(
              right: 112,
              bottom: 16,
              child: Container(
                width: 17,
                height: 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 252, 84, 85),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Container(),
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
            Positioned(
              left: 19,
              top: 163,
              child: Container(
                width: 212,
                height: 205,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 96,
                        height: 70,
                        child: Image.asset(
                          "assets/images/happycows-cow-2.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 209,
                        height: 74,
                        margin: EdgeInsets.only(left: 3, top: 61),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 93,
                                height: 63,
                                child: Image.asset(
                                  "assets/images/adobestock-159239671-2.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 100,
                                height: 71,
                                margin: EdgeInsets.only(left: 16, top: 3),
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      child: Text(
                                        "Chicken (Full)",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 16,
                                          fontFamily: "Roboto",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      bottom: 1,
                                      child: Container(
                                        width: 55,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Opacity(
                                                opacity: 0.68,
                                                child: Text(
                                                  "N2,000",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    fontSize: 14,
                                                    fontFamily: "Roboto",
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Opacity(
                                                opacity: 0.3,
                                                child: Text(
                                                  "CHICKEN",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 0, 0, 0),
                                                    fontSize: 12,
                                                    letterSpacing: 0.6,
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}