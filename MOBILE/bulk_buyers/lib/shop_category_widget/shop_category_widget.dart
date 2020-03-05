
import 'package:flutter/material.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';


class ShopCategoryWidget extends StatelessWidget {
  
  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));
  
  void onViewSevenPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewFivePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onViewSixPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onViewEightPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onIcArrowBack18pxPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: -1,
              top: -1,
              right: -5,
              bottom: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 1,
                    right: 0,
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
                    left: 1,
                    top: 41,
                    right: 5,
                    bottom: 8,
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
                          height: 68,
                          margin: EdgeInsets.only(left: 14, right: 22),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 70,
                                  height: 66,
                                  margin: EdgeInsets.only(bottom: 2),
                                  child: FlatButton(
                                    onPressed: () => this.onViewFourPressed(context),
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
                                          height: 5,
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
                                  width: 57,
                                  height: 61,
                                  margin: EdgeInsets.only(left: 24, bottom: 2),
                                  child: FlatButton(
                                    onPressed: () => this.onViewFivePressed(context),
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
                                  height: 58,
                                  margin: EdgeInsets.only(right: 27),
                                  child: FlatButton(
                                    onPressed: () => this.onViewSixPressed(context),
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
                                  width: 63,
                                  height: 58,
                                  child: FlatButton(
                                    onPressed: () => this.onViewSevenPressed(context),
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
                    left: 0,
                    top: 0,
                    right: 4,
                    child: Container(
                      height: 82,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top: 14,
                    right: 5,
                    child: Container(
                      height: 686,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 55,
                            margin: EdgeInsets.only(left: 17, right: 21),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 48,
                                    height: 43,
                                    margin: EdgeInsets.only(top: 6),
                                    child: FlatButton(
                                      onPressed: () => this.onIcArrowBack18pxPressed(context),
                                      color: Colors.transparent,
                                      textColor: Color.fromARGB(255, 0, 0, 0),
                                      padding: EdgeInsets.all(0),
                                      child: Text("",),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 53,
                                    height: 55,
                                    child: Image.asset(
                                      "assets/images/icon.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 63,
                            margin: EdgeInsets.only(left: 11, top: 27, right: 11),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 63,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 63,
                                            height: 63,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  child: Container(
                                                    height: 63,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(51, 142, 142, 142),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(41, 0, 0, 0),
                                                          offset: Offset(0, 2),
                                                          blurRadius: 52,
                                                        ),
                                                      ],
                                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                      children: [
                                                        Container(
                                                          height: 32,
                                                          margin: EdgeInsets.only(left: 14, top: 10, right: 15),
                                                          child: Image.asset(
                                                            "assets/images/broccoli.png",
                                                            fit: BoxFit.none,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 14,
                                                  right: 13,
                                                  bottom: 8,
                                                  child: Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                      "Vegetables",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 51, 48, 48),
                                                        fontSize: 7,
                                                        fontFamily: "Roboto",
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 63,
                                            height: 63,
                                            margin: EdgeInsets.only(left: 9),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(51, 252, 215, 112),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(41, 0, 0, 0),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 52,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 12, right: 11, bottom: 8),
                                                  child: Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                      "Cooking Oils",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 0, 0, 0),
                                                        fontSize: 7,
                                                        fontFamily: "Roboto",
                                                      ),
                                                      textAlign: TextAlign.center,
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
                                          child: Container(
                                            width: 63,
                                            height: 63,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(26, 255, 0, 0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(41, 0, 0, 0),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 52,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 7, right: 5, bottom: 8),
                                                  child: Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                      "Meats & Poultry",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 0, 0, 0),
                                                        fontSize: 7,
                                                        fontFamily: "Roboto",
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 63,
                                            height: 63,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(26, 168, 168, 168),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(41, 0, 0, 0),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 52,
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(left: 7, right: 7, bottom: 8),
                                                  child: Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                      "Grains & Beans",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(255, 0, 0, 0),
                                                        fontSize: 7,
                                                        fontFamily: "Roboto",
                                                      ),
                                                      textAlign: TextAlign.center,
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
                                Positioned(
                                  child: Container(
                                    width: 63,
                                    height: 63,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(26, 5, 53, 255),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(41, 0, 0, 0),
                                          offset: Offset(0, 2),
                                          blurRadius: 52,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 6, right: 5, bottom: 8),
                                          child: Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                              "Fish & Seafoods",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 0, 0, 0),
                                                fontSize: 7,
                                                fontFamily: "Roboto",
                                              ),
                                              textAlign: TextAlign.center,
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
                          Container(
                            height: 45,
                            margin: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 235, 235, 235),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(47, 244, 171, 0),
                                  offset: Offset(0, 2),
                                  blurRadius: 52,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "VEGETABLES",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 95, 95, 95),
                                      fontSize: 17,
                                      letterSpacing: -0.057,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 224,
                            margin: EdgeInsets.only(left: 13, top: 17, right: 17),
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
                                          width: 167,
                                          height: 220,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(13, 0, 0, 0),
                                                offset: Offset(0, 2),
                                                blurRadius: 52,
                                              ),
                                            ],
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
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
                                                  height: 158,
                                                  margin: EdgeInsets.only(left: 27),
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
                                                              "1 Baskets",
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
                                                          margin: EdgeInsets.only(left: 49),
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
                                                    onPressed: () => this.onViewPressed(context),
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
                                        top: 142,
                                        child: Text(
                                          "Tomatoes",
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
                                        top: 14,
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
                                            "assets/images/path-4726.png",
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
                                                  margin: EdgeInsets.only(top: 109, right: 40),
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
                                                          "N15,000",
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
                                                    onPressed: () => this.onViewTwoPressed(context),
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
                            margin: EdgeInsets.only(left: 13, top: 20, right: 17),
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
                                                    onPressed: () => this.onViewThreePressed(context),
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 274,
                    right: 41,
                    child: Container(
                      width: 136,
                      height: 99,
                      child: Image.asset(
                        "assets/images/happycows-cow-3.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 94,
                    top: 99,
                    right: 27,
                    child: Container(
                      height: 44,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 42,
                              height: 42,
                              margin: EdgeInsets.only(top: 2),
                              child: Image.asset(
                                "assets/images/005-vegetable-oil.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 44,
                              height: 44,
                              margin: EdgeInsets.only(right: 29),
                              child: Image.asset(
                                "assets/images/008-meat-1.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 41,
                              height: 41,
                              child: Image.asset(
                                "assets/images/009-rice-1.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 509,
                    child: Container(
                      width: 121,
                      height: 81,
                      child: Image.asset(
                        "assets/images/adobestock-159239671.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 103,
              child: Container(
                width: 36,
                height: 36,
                child: Image.asset(
                  "assets/images/003-fish.png",
                  fit: BoxFit.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}