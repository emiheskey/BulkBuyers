
import 'package:flutter/material.dart';
import 'package:bulk_buyers/all_products_list_widget/all_products_list_widget.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';


class AllProductsGridWidget extends StatelessWidget {

  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));

  void onIconIonicIosMenuPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));

  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));

  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));

  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));

  void onViewSevenPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));

  void onViewEightPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));

  void onViewNinePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));

  void onViewTenPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));

  void onViewFivePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => AllProductsListWidget()));

  void onViewSixPressed(BuildContext context) {

  }

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
                    margin: EdgeInsets.only(left: 14, right: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 70,
                            height: 66,
                            child: FlatButton(
                              onPressed: () => this.onViewPressed(context),
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(11)),
                              ),
                              textColor: Color.fromARGB(255, 248, 96, 29),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-home-3.png",),
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
                            width: 46,
                            height: 53,
                            margin: EdgeInsets.only(left: 27, bottom: 3),
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
                            width: 68,
                            height: 55,
                            margin: EdgeInsets.only(right: 22, bottom: 1),
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
                                    height: 5,
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
                            height: 53,
                            margin: EdgeInsets.only(bottom: 3),
                            child: FlatButton(
                              onPressed: () => this.onViewFourPressed(context),
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
              left: 15,
              top: 13,
              right: 11,
              child: Container(
                height: 679,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 53,
                        height: 55,
                        margin: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          "assets/images/icon.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      margin: EdgeInsets.only(left: 4, top: 35, right: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 24,
                              height: 25,
                              margin: EdgeInsets.only(top: 11),
                              child: Image.asset(
                                "assets/images/icon-material-add-shopping-cart.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 301,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(25, 0, 0, 0),
                                    offset: Offset(0, 2),
                                    blurRadius: 52,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search products",
                                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  color: Color.fromARGB(255, 67, 64, 64),
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                ),
                                maxLines: 1,
                                autocorrect: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 29,
                      margin: EdgeInsets.only(left: 4, top: 20, right: 95),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 92,
                              height: 20,
                              margin: EdgeInsets.only(top: 4),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 252, 84, 85),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(47, 244, 171, 0),
                                    offset: Offset(0, 2),
                                    blurRadius: 52,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(2)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 7, right: 15),
                                    child: Text(
                                      "ALL PRODUCTS",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 10,
                                        letterSpacing: -0.033,
                                        fontFamily: "Roboto",
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 92,
                              height: 29,
                              child: FlatButton(
                                onPressed: () => this.onViewFivePressed(context),
                                color: Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                textColor: Color.fromARGB(255, 252, 84, 85),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "LIST",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Roboto",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 224,
                      margin: EdgeInsets.only(top: 18, right: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: 167,
                            margin: EdgeInsets.only(top: 4),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    width: 166,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(13, 0, 0, 0),
                                          offset: Offset(0, 2),
                                          blurRadius: 52,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/images/path-4725.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                  child: Container(
                                    width: 167,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 125,
                                            height: 147,
                                            margin: EdgeInsets.only(left: 21),
                                            child: Image.asset(
                                              "assets/images/tomatoes-large--easyshopeasycookservices-785x1000-2.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 147,
                                            height: 16,
                                            margin: EdgeInsets.only(left: 11, bottom: 6),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 2),
                                                    child: Opacity(
                                                      opacity: 0.3,
                                                      child: Text(
                                                        "Vegetables",
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 0, 0, 0),
                                                          fontSize: 12,
                                                          fontFamily: "Roboto",
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(left: 42),
                                                    child: Text(
                                                      "N5,000",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 0, 0, 0),
                                                        fontSize: 14,
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
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 167,
                                            height: 35,
                                            child: FlatButton(
                                              onPressed: () => this.onViewSevenPressed(context),
                                              color: Colors.transparent,
                                              textColor: Color.fromARGB(255, 255, 255, 255),
                                              padding: EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: "Roboto",
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Image.asset("assets/images/icon-material-add-shopping-cart-2.png",),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 138,
                                  child: Text(
                                    "Tomatoes (1 Basket)",
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
                                  left: 135,
                                  top: 10,
                                  child: Container(
                                    width: 21,
                                    height: 19,
                                    child: Image.asset(
                                      "assets/images/3j.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 167,
                            margin: EdgeInsets.only(top: 4),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  right: 1,
                                  child: Container(
                                    width: 166,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(13, 0, 0, 0),
                                          offset: Offset(0, 2),
                                          blurRadius: 52,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/images/path-4725.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 167,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 21,
                                            height: 19,
                                            margin: EdgeInsets.only(right: 11),
                                            child: Image.asset(
                                              "assets/images/3j.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 136,
                                            height: 99,
                                            margin: EdgeInsets.only(top: 5, right: 19),
                                            child: Image.asset(
                                              "assets/images/happycows-cow-3.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.only(top: 5, right: 40),
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
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 149,
                                            height: 16,
                                            margin: EdgeInsets.only(right: 8, bottom: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(right: 71, bottom: 2),
                                                    child: Opacity(
                                                      opacity: 0.3,
                                                      child: Text(
                                                        "Beef",
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 0, 0, 0),
                                                          fontSize: 12,
                                                          fontFamily: "Roboto",
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.bottomLeft,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 167,
                                            height: 35,
                                            child: FlatButton(
                                              onPressed: () => this.onViewEightPressed(context),
                                              color: Colors.transparent,
                                              textColor: Color.fromARGB(255, 255, 255, 255),
                                              padding: EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: "Roboto",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Image.asset("assets/images/icon-material-add-shopping-cart-2.png",),
                                                ],
                                              ),
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
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      margin: EdgeInsets.only(left: 4, top: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            width: 167,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  child: Container(
                                    width: 166,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(13, 0, 0, 0),
                                          offset: Offset(0, 2),
                                          blurRadius: 52,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/images/path-4725.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 10,
                                  bottom: 0,
                                  child: Container(
                                    width: 167,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 21,
                                            height: 19,
                                            margin: EdgeInsets.only(left: 135),
                                            child: Image.asset(
                                              "assets/images/3j.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 10, top: 109),
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
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 147,
                                            height: 16,
                                            margin: EdgeInsets.only(left: 11, bottom: 6),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(bottom: 2),
                                                    child: Opacity(
                                                      opacity: 0.3,
                                                      child: Text(
                                                        "Chicken",
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 0, 0, 0),
                                                          fontSize: 12,
                                                          fontFamily: "Roboto",
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(left: 59),
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 167,
                                            height: 35,
                                            child: FlatButton(
                                              onPressed: () => this.onViewNinePressed(context),
                                              color: Colors.transparent,
                                              textColor: Color.fromARGB(255, 255, 255, 255),
                                              padding: EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: "Roboto",
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Image.asset("assets/images/icon-material-add-shopping-cart-2.png",),
                                                ],
                                              ),
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
                          Spacer(),
                          Container(
                            width: 167,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  right: 1,
                                  child: Container(
                                    width: 166,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(13, 0, 0, 0),
                                          offset: Offset(0, 2),
                                          blurRadius: 52,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/images/path-4725.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 167,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 132,
                                            height: 121,
                                            margin: EdgeInsets.only(right: 11),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 111,
                                                    height: 111,
                                                    margin: EdgeInsets.only(top: 10),
                                                    child: Image.asset(
                                                      "assets/images/mama-gold-rice---50kg-6407415.png",
                                                      fit: BoxFit.none,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 21,
                                                    height: 19,
                                                    child: Image.asset(
                                                      "assets/images/3j.png",
                                                      fit: BoxFit.none,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.only(top: 7, right: 23),
                                            child: Text(
                                              "Bag of Rice (50kg)",
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
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 149,
                                            height: 16,
                                            margin: EdgeInsets.only(right: 8, bottom: 6),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(right: 62, bottom: 2),
                                                    child: Opacity(
                                                      opacity: 0.3,
                                                      child: Text(
                                                        "Foods",
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 0, 0, 0),
                                                          fontSize: 12,
                                                          fontFamily: "Roboto",
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.bottomLeft,
                                                  child: Text(
                                                    "N22,000",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      fontSize: 14,
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
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 167,
                                            height: 35,
                                            child: FlatButton(
                                              onPressed: () => this.onViewTenPressed(context),
                                              color: Colors.transparent,
                                              textColor: Color.fromARGB(255, 255, 255, 255),
                                              padding: EdgeInsets.all(0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: "Roboto",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Image.asset("assets/images/icon-material-add-shopping-cart-2.png",),
                                                ],
                                              ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 34,
              top: 501,
              child: Container(
                width: 121,
                height: 81,
                child: Image.asset(
                  "assets/images/adobestock-159239671.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
            Positioned(
              top: 171,
              right: 16,
              child: Container(
                width: 92,
                height: 29,
                child: FlatButton(
                  onPressed: () => this.onViewSixPressed(context),
                  color: Color.fromARGB(255, 219, 219, 219),
                  textColor: Color.fromARGB(255, 163, 163, 163),
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "GRID",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Roboto",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}