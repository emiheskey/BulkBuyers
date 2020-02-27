
import 'package:flutter/material.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';



class OrderHistoryWidget extends StatelessWidget {

  void onIconFeatherArrowLPressed(BuildContext context) => Navigator.pop(context);

  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));

  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));

  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));

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
                    margin: EdgeInsets.only(left: 32, right: 17),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 37,
                            height: 53,
                            margin: EdgeInsets.only(bottom: 8),
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
                                    height: 7,
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
                            width: 54,
                            height: 58,
                            margin: EdgeInsets.only(left: 44, bottom: 3),
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
                                    height: 7,
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
                            height: 55,
                            margin: EdgeInsets.only(right: 16, bottom: 1),
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
                                    height: 7,
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
                            width: 72,
                            height: 66,
                            child: FlatButton(
                              onPressed: () => this.onViewFourPressed(context),
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(11)),
                              ),
                              textColor: Color.fromARGB(255, 252, 84, 85),
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
              bottom: 133,
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
                  Container(
                    height: 42,
                    margin: EdgeInsets.only(top: 9, right: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Order History",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
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
                    height: 20,
                    margin: EdgeInsets.only(left: 21, top: 56, right: 22),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Cow Meat (Half)",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 23),
                            child: Text(
                              "x1",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
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
                            "135,000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    margin: EdgeInsets.only(left: 16, top: 17, right: 19),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 23,
                            height: 22,
                            child: Image.asset(
                              "assets/images/icon-material-date-range.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 7, top: 3),
                            child: Text(
                              "12/10/2019",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 137, 137),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(
                              "DELIVERED",
                              style: TextStyle(
                                color: Color.fromARGB(255, 51, 222, 0),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.only(left: 1, top: 7, right: 1),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 21, top: 13, right: 22),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Chicken (Full)",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 43),
                            child: Text(
                              "x2",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
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
                            "4,600",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    margin: EdgeInsets.only(left: 16, top: 17, right: 19),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 23,
                            height: 22,
                            child: Image.asset(
                              "assets/images/icon-material-date-range.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 7, top: 3),
                            child: Text(
                              "08/10/2019",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 137, 137),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(
                              "DELIVERED",
                              style: TextStyle(
                                color: Color.fromARGB(255, 51, 222, 0),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.only(left: 1, top: 11, right: 1),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 21, top: 11, right: 22),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Butter Beans",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 49),
                            child: Text(
                              "x1",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
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
                            "5,000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    margin: EdgeInsets.only(left: 16, top: 17, right: 19),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 23,
                            height: 22,
                            child: Image.asset(
                              "assets/images/icon-material-date-range.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 7, top: 3),
                            child: Text(
                              "01/10/2019",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 137, 137),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(
                              "CANCELLED",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 33, 33),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.only(left: 1, top: 19, right: 1),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 21, top: 11, right: 22),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Stockfish",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 76),
                            child: Text(
                              "x2",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
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
                            "8,000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    margin: EdgeInsets.only(left: 16, top: 17, right: 19),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 23,
                            height: 22,
                            child: Image.asset(
                              "assets/images/icon-material-date-range.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 7, top: 3),
                            child: Text(
                              "29/09/2019",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 137, 137),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(
                              "DELIVERED",
                              style: TextStyle(
                                color: Color.fromARGB(255, 51, 222, 0),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.only(left: 1, top: 10, right: 1),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 21, top: 14, right: 21),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Crayfish",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 85),
                            child: Text(
                              "x1",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
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
                            "12,000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    margin: EdgeInsets.only(left: 16, top: 17, right: 19),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 23,
                            height: 22,
                            child: Image.asset(
                              "assets/images/icon-material-date-range.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 7, top: 3),
                            child: Text(
                              "24/09/2019",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 137, 137),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(
                              "DELIVERED",
                              style: TextStyle(
                                color: Color.fromARGB(255, 51, 222, 0),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.only(left: 1, top: 14, right: 1),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                  Spacer(),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 21, right: 22, bottom: 17),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Tomatoes",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 70),
                            child: Text(
                              "x1",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "6,000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17,
                              fontFamily: "Roboto",
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    margin: EdgeInsets.only(left: 16, right: 20, bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 23,
                            height: 22,
                            child: Image.asset(
                              "assets/images/icon-material-date-range.png",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 7, bottom: 1),
                            child: Text(
                              "02/09/2019",
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 137, 137),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 1),
                            child: Text(
                              "PENDING",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 43, 222),
                                fontSize: 15,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 234, 234),
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 13,
              right: 21,
              child: Container(
                width: 53,
                height: 55,
                child: Image.asset(
                  "assets/images/icon.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Positioned(
              left: 13,
              top: 19,
              child: Container(
                width: 42,
                height: 34,
                child: FlatButton(
                  onPressed: () => this.onIconFeatherArrowLPressed(context),
                  color: Colors.transparent,
                  textColor: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.all(0),
                  child: Image.asset("assets/images/icon-feather-arrow-left.png",),
                ),
              ),
            ),
            Positioned(
              left: -1,
              top: 130,
              right: 1,
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 248, 253),
                ),
                child: Container(),
              ),
            ),
            Positioned(
              left: 20,
              top: 140,
              right: 22,
              child: Container(
                height: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Product",
                        style: TextStyle(
                          color: Color.fromARGB(255, 152, 152, 152),
                          fontSize: 17,
                          fontFamily: "Roboto",
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 83),
                        child: Text(
                          "Qty",
                          style: TextStyle(
                            color: Color.fromARGB(255, 152, 152, 152),
                            fontSize: 17,
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
                        "Price (N)",
                        style: TextStyle(
                          color: Color.fromARGB(255, 152, 152, 152),
                          fontSize: 17,
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
    );
  }
}