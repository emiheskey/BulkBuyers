
import 'package:flutter/material.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';
import 'package:bulk_buyers/make_payment_widget/make_payment_widget.dart';


class CartWidget extends StatelessWidget {
  
  void onViewTwoPressed(BuildContext context) {
  
  }
  
  void onIconIonicIosMenuPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));

  
  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));

  void onCHECKOUTNOWPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => MakePaymentWidget()));
  
  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  
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
              left: -1,
              right: -4,
              bottom: 0,
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
              bottom: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 684,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 242, 239, 239),
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
                    height: 68,
                    margin: EdgeInsets.only(left: 22, right: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 57,
                            height: 58,
                            margin: EdgeInsets.only(bottom: 10),
                            child: FlatButton(
                              onPressed: () => this.onViewPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-home.png",),
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
                            width: 70,
                            height: 66,
                            margin: EdgeInsets.only(left: 18, bottom: 2),
                            child: FlatButton(
                              onPressed: () => this.onViewTwoPressed(context),
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(11)),
                              ),
                              textColor: Color.fromARGB(255, 252, 84, 85),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-shopping-cart.png",),
                                  SizedBox(
                                    height: 3,
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
                            width: 68,
                            height: 58,
                            margin: EdgeInsets.only(right: 30),
                            child: FlatButton(
                              onPressed: () => this.onViewThreePressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-heart.png",),
                                  SizedBox(
                                    height: 2,
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
                            width: 64,
                            height: 56,
                            margin: EdgeInsets.only(bottom: 2),
                            child: FlatButton(
                              onPressed: () => this.onViewFourPressed(context),
                              color: Colors.transparent,
                              textColor: Color.fromARGB(255, 92, 151, 247),
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
                child: FlatButton(
                  onPressed: () => this.onIconIonicIosMenuPressed(context),
                  color: Colors.transparent,
                  textColor: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.all(0),
                  child: Image.asset("assets/images/icon-ionic-ios-menu.png",),
                ),
              ),
            ),
            Positioned(
              left: -1,
              top: 13,
              right: -1,
              child: Container(
                height: 696,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 53,
                        height: 55,
                        margin: EdgeInsets.only(right: 22),
                        child: Image.asset(
                          "assets/images/icon.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 39,
                      margin: EdgeInsets.only(top: 25, right: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 21),
                              child: Text(
                                "Your Cart",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16,
                                  fontFamily: "Roboto",
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
                      margin: EdgeInsets.only(left: 16, top: 8, right: 15),
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
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0,
                            top: 9,
                            right: 11,
                            bottom: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 106,
                                    height: 106,
                                    child: Image.asset(
                                      "assets/images/mama-gold-rice.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 26,
                                  margin: EdgeInsets.only(top: 1, bottom: 9),
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
                                                  "assets/images/ic-add-48px.png",
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
                          Positioned(
                            left: 106,
                            right: 18,
                            child: Container(
                              height: 70,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: 81,
                                      height: 70,
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Positioned(
                                            left: 0,
                                            right: 0,
                                            child: Text(
                                              "Bag of Rice",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 0, 0, 0),
                                                fontSize: 16,
                                                fontFamily: "Roboto",
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
                                                        "N66,000",
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
                                                        "50kg",
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "3",
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 116,
                      margin: EdgeInsets.only(left: 16, top: 2, right: 15),
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
                                              "assets/images/ic-add-48px.png",
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
                              "2",
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
                    Container(
                      height: 213,
                      margin: EdgeInsets.only(left: 1, top: 122),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 16,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text(
                                      "Subtotal",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 67, 64, 64),
                                        fontSize: 12,
                                        fontFamily: "Roboto",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "N 76,000",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 67, 64, 64),
                                      fontSize: 14,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 13, top: 11, right: 16),
                            child: Opacity(
                              opacity: 0.2,
                              child: Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                ),
                                child: Container(),
                              ),
                            ),
                          ),
                          Container(
                            height: 16,
                            margin: EdgeInsets.only(left: 16, top: 9, right: 17),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text(
                                      "Delivery Fee",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 67, 64, 64),
                                        fontSize: 12,
                                        fontFamily: "Roboto",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "N 5,000",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 252, 84, 85),
                                      fontSize: 14,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 16,
                            margin: EdgeInsets.only(left: 16, top: 13, right: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text(
                                      "Total",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 67, 64, 64),
                                        fontSize: 12,
                                        fontFamily: "Roboto",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "N 81,000",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 67, 64, 64),
                                      fontSize: 14,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9),
                            child: Opacity(
                              opacity: 0.2,
                              child: Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 112, 112, 112),
                                ),
                                child: Container(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 306,
                              height: 43,
                              margin: EdgeInsets.only(top: 18, right: 33),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    top: 1,
                                    child: Container(
                                      width: 306,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.076, 0.659),
                                          end: Alignment(0.899, 0.669),
                                          stops: [
                                            0,
                                            1,
                                          ],
                                          colors: [
                                            Color.fromARGB(255, 255, 147, 0),
                                            Color.fromARGB(255, 216, 58, 0),
                                          ],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(41, 0, 0, 0),
                                            offset: Offset(0, 3),
                                            blurRadius: 6,
                                          ),
                                        ],
                                        borderRadius: BorderRadius.all(Radius.circular(21)),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 108,
                                            height: 16,
                                            margin: EdgeInsets.only(left: 31),
                                            child: FlatButton(
                                              onPressed: () => this.onCHECKOUTNOWPressed(context),
                                              color: Color.fromARGB(0, 0, 0, 0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(0)),
                                              ),
                                              textColor: Color.fromARGB(255, 255, 255, 255),
                                              padding: EdgeInsets.all(0),
                                              child: Text(
                                                "CHECKOUT NOW",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 54),
                                            child: Text(
                                              "N 81,000",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 14,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 120,
                                    child: Opacity(
                                      opacity: 0.2,
                                      child: Container(
                                        width: 1,
                                        height: 43,
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                        ),
                                        child: Container(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 280,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(41, 0, 0, 0),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(19)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 60),
                                    child: Text(
                                      "CONTINUE SHOPPING",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 252, 84, 85),
                                        fontSize: 14,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
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
            ),
            Positioned(
              left: 32,
              top: 266,
              child: Container(
                width: 169,
                height: 99,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 78,
                        height: 99,
                        child: Image.asset(
                          "assets/images/tomatoes-large.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 71,
                        height: 70,
                        margin: EdgeInsets.only(left: 20, top: 22),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              child: Text(
                                "Tomatoes",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              right: 12,
                              bottom: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Opacity(
                                      opacity: 0.68,
                                      child: Text(
                                        "N10,000",
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
                                  Opacity(
                                    opacity: 0.3,
                                    child: Text(
                                      "1 BASKET",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 12,
                                        letterSpacing: 0.6,
                                        fontFamily: "Roboto",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
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