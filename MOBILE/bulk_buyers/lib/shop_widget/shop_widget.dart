
import 'package:flutter/material.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/product_detail_widget/product_detail_widget.dart';
import 'package:bulk_buyers/shop_category_widget/shop_category_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';


class ShopWidget extends StatelessWidget {

  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  
  void onIconIonicIosMenuPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewSixPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewFivePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  
  void onItem1Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopCategoryWidget()));
  
  void onbuttonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopCategoryWidget()));
  
  void onbuttonTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopCategoryWidget()));
  
  void onbuttonThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  
  void onbuttonFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopCategoryWidget()));
  
  void onTomatoesLargeEasyPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailWidget()));
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));
  
  void onViewTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onGroup2188Pressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onHappyCowsCowPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(250, 250, 250, 250),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: -5,
              bottom: 0,
              child: Container(
                height: 80,
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
                              textColor: Color.fromARGB(255, 248, 96, 29),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-home-3.png",),
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
                              textColor: Color.fromARGB(255, 92, 151, 247),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/icon-feather-user-2.png",),
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
              left: 12,
              top: 13,
              right: 10,
              bottom: 109,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 53,
                      height: 55,
                      margin: EdgeInsets.only(right: 11),
                      child: Image.asset(
                        "assets/images/icon.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    margin: EdgeInsets.only(left: 7, top: 35, right: 5),
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
                            width: 290,
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
                                contentPadding: EdgeInsets.only(left: 10, top: 5),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 67, 64, 64),
                                fontSize: 16,
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 75,
                      height: 20,
                      margin: EdgeInsets.only(left: 7, top: 14),
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
                            margin: EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              "CATEGORIES",
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
                  Container(
                    height: 63,
                    margin: EdgeInsets.only(top: 13),
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
                                    child: FlatButton(
                                      onPressed: () => this.onItem1Pressed(context),
                                      color: Color.fromARGB(51, 136, 192, 87),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      textColor: Color.fromARGB(255, 0, 0, 0),
                                      padding: EdgeInsets.all(0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/images/broccoli-2.png",),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Vegetables",
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontFamily: "Roboto",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 63,
                                    height: 63,
                                    margin: EdgeInsets.only(left: 9),
                                    child: FlatButton(
                                      onPressed: () => this.onbuttonPressed(context),
                                      color: Color.fromARGB(51, 252, 215, 112),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      textColor: Color.fromARGB(255, 0, 0, 0),
                                      padding: EdgeInsets.all(0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/images/005-vegetable-oil.png",),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Cooking Oils",
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontFamily: "Roboto",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
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
                                    child: FlatButton(
                                      onPressed: () => this.onbuttonThreePressed(context),
                                      color: Color.fromARGB(26, 255, 0, 0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      textColor: Color.fromARGB(255, 0, 0, 0),
                                      padding: EdgeInsets.all(0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/images/008-meat-1.png",),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Meats & Poultry",
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontFamily: "Roboto",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 63,
                                    height: 63,
                                    child: FlatButton(
                                      onPressed: () => this.onbuttonFourPressed(context),
                                      color: Color.fromARGB(26, 168, 168, 168),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      textColor: Color.fromARGB(255, 0, 0, 0),
                                      padding: EdgeInsets.all(0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/images/009-rice-1.png",),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            "Grains & Beans",
                                            style: TextStyle(
                                              fontSize: 7,
                                              fontFamily: "Roboto",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
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
                          child: Container(
                            width: 63,
                            height: 63,
                            child: FlatButton(
                              onPressed: () => this.onbuttonTwoPressed(context),
                              color: Color.fromARGB(26, 5, 53, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/003-fish.png",),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Fish & Seafoods",
                                    style: TextStyle(
                                      fontSize: 7,
                                      fontFamily: "Roboto",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.only(left: 5, top: 26, right: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 20,
                          margin: EdgeInsets.symmetric(horizontal: 1),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 66,
                                  height: 20,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          height: 20,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(47, 244, 171, 0),
                                                offset: Offset(0, 2),
                                                blurRadius: 52,
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            "assets/images/path-4739.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 7,
                                        right: 11,
                                        child: Text(
                                          "FEATURED",
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
                                  margin: EdgeInsets.only(top: 3),
                                  child: Text(
                                    "SEE ALL",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 252, 84, 85),
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
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: 9),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 11),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          top: 1,
                                          right: 0,
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
                                                    child: FlatButton(
                                                      onPressed: () => this.onTomatoesLargeEasyPressed(context),
                                                      color: Colors.transparent,
                                                      textColor: Color.fromARGB(255, 0, 0, 0),
                                                      padding: EdgeInsets.all(0),
                                                      child: Image.asset(
                                                        "assets/images/tomatoes-large.png",
                                                      fit:BoxFit.none,
                                                      ),
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
                                                            margin: EdgeInsets.only(left: 39),
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
                                                      textColor: Color.fromARGB(0, 0, 0, 255),
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
                                          top: 139,
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
                                          left: 130,
                                          top: 11,
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
                                Container(
                                  width: 167,
                                  margin: EdgeInsets.only(top: 1),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 0,
                                        right: 1,
                                        child: Container(
                                          width: 166,
                                          height: 220,
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
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  
                ],
              ),
            ),
            Positioned(
              top: 351,
              right: 32,
              child: Container(
                width: 136,
                height: 99,
                child: FlatButton(
                  onPressed: () => this.onHappyCowsCowPressed(context),
                  color: Colors.transparent,
                  textColor: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.all(0),
                  child: Image.asset(
                    "assets/images/happycows-cow-3.png",
                    fit:BoxFit.none,
                  ),
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