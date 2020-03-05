
import 'package:flutter/material.dart';
import 'package:bulk_buyers/order_history_widget/order_history.dart';
import 'package:bulk_buyers/welcome_widget/welcome_widget.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/profile_widget/profile_widget.dart';

class YouWidget extends StatelessWidget {


  void onComponent191Pressed(BuildContext context) {

  }
  void onComponent201Pressed(BuildContext context) {

  }
  void onComponent211Pressed(BuildContext context) {

  }
  void onComponent171Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  void onComponent161Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryWidget()));
  void onComponent11Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeWidget()));
  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));
  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  void onAccountPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileWidget()));

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
                height: 90,
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
              bottom: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 0,
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
                    height: 65,
                    margin: EdgeInsets.only(left: 31, right: 39),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 45,
                            height: 61,
                            margin: EdgeInsets.only(bottom: 4),
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
                            width: 51,
                            height: 65,
                            margin: EdgeInsets.only(left: 28),
                            child: FlatButton(
                              onPressed: () => this.onViewTwoPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-shopping-cart-2.png",),
                                  SizedBox(
                                    height: 6,
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
                            width: 88,
                            height: 60,
                            margin: EdgeInsets.only(right: 34),
                            child: FlatButton(
                              onPressed: () => this.onViewThreePressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-heart-2.png",),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Wish List ",
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
                            width: 35,
                            height: 53,
                            margin: EdgeInsets.only(bottom: 4),
                            child: FlatButton(
                              onPressed: () => this.onViewFourPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 248, 96, 29),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-user.png",),
                                  SizedBox(
                                    height: 10,
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
                      margin: EdgeInsets.only(left: 20, top: 25),
                      child: FlatButton.icon(
                        icon: Image.asset("assets/images/list.png",),
                        label: Text(
                          "My Orders",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
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
                      margin: EdgeInsets.only(left: 20, top: 31),
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
                      margin: EdgeInsets.only(left: 20, top: 30),
                      child: FlatButton(
                        onPressed: () => this.onAccountPressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/path-3968.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "My Account",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 232,
                      height: 20,
                      margin: EdgeInsets.only(left: 20, top: 40),
                      child: FlatButton(
                        onPressed: () => this.onComponent191Pressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/path-4731.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "About Bulk Buyers Connect",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 133,
                      height: 21,
                      margin: EdgeInsets.only(left: 23, top: 39),
                      child: FlatButton(
                        onPressed: () => this.onComponent201Pressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icon-ionic-ios-help-circle-outline.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "How it works",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 141,
                      height: 22,
                      margin: EdgeInsets.only(left: 24, top: 39),
                      child: FlatButton(
                        onPressed: () => this.onComponent211Pressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icon-ionic-ios-send.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Refer-A-Friend",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 186,
                      height: 21,
                      margin: EdgeInsets.only(left: 24, top: 37),
                      child: FlatButton(
                        onPressed: () => this.onComponent11Pressed(context),
                        color: Color.fromARGB(0, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/path-4734.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Logout your account",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}