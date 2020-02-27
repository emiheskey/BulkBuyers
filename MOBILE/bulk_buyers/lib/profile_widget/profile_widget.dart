
import 'package:flutter/material.dart';
import 'package:bulk_buyers/shop_widget/shop_widget.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';


class ProfileWidget extends StatelessWidget {
  
  void onViewFourPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => ShopWidget()));
  
  void onViewTwoPressed(BuildContext context) {
  
  }
  
  void onViewThreePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistWidget()));
  
  void onIconFeatherArrowLPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YouWidget()));
  
  void onGroup4178ValueChanged(BuildContext context) {
  
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
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: -1,
              top: -1,
              right: -5,
              bottom: -1,
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
                    bottom: 11,
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
                                  width: 46,
                                  height: 58,
                                  margin: EdgeInsets.only(bottom: 8),
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
                                  width: 45,
                                  height: 58,
                                  margin: EdgeInsets.only(left: 28, bottom: 6),
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
                                  margin: EdgeInsets.only(right: 41, bottom: 6),
                                  child: FlatButton(
                                    onPressed: () => this.onViewThreePressed(context),
                                    color: Colors.transparent,
                                    textColor: Color.fromARGB(255, 92, 151, 247),
                                    padding: EdgeInsets.all(0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/images/icon-feather-heart-3.png",),
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
                    bottom: 182,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 55,
                          margin: EdgeInsets.only(left: 23, right: 21),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 42,
                                  height: 34,
                                  margin: EdgeInsets.only(top: 6),
                                  child: FlatButton(
                                    onPressed: () => this.onIconFeatherArrowLPressed(context),
                                    color: Colors.transparent,
                                    textColor: Color.fromARGB(255, 0, 0, 0),
                                    padding: EdgeInsets.all(0),
                                    child: Image.asset("assets/images/icon-feather-arrow-left.png",),
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
                          height: 112,
                          margin: EdgeInsets.only(left: 16, top: 37, right: 42),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 108,
                                  height: 108,
                                  child: Image.asset(
                                    "assets/images/boys.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 192,
                                  height: 99,
                                  margin: EdgeInsets.only(top: 13),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          "EMMANUEL ENEMAKWU",
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 17,
                                            fontFamily: "Roboto",
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 8, right: 35),
                                          child: Text(
                                            "Joined since 10/02/2018",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 203, 203, 203),
                                              fontSize: 14,
                                              fontFamily: "Roboto",
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: 85,
                                          height: 46,
                                          margin: EdgeInsets.only(top: 9, right: 24),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 255, 157, 0),
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                          ),
                                          child: Container(),
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
                          height: 2,
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 234, 234),
                          ),
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 225,
                            height: 19,
                            margin: EdgeInsets.only(left: 32, top: 58),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 23,
                                    height: 17,
                                    child: Image.asset(
                                      "assets/images/icon-awesome-envelope.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 26),
                                    child: Text(
                                      "emmanuel@projaro.com",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
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
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 234, 234),
                          ),
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 147,
                            height: 23,
                            margin: EdgeInsets.only(left: 33, top: 9),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 22,
                                    height: 23,
                                    child: Image.asset(
                                      "assets/images/icon-awesome-phone-alt.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 26, top: 2),
                                    child: Text(
                                      "08067070812",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
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
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 234, 234),
                          ),
                          child: Container(),
                        ),
                        Container(
                          height: 24,
                          margin: EdgeInsets.only(left: 32, top: 9, right: 68),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 24,
                                  height: 23,
                                  child: Image.asset(
                                    "assets/images/icon-material-home.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Suite E17A, Emab Plaza Wuse 2",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
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
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 234, 234),
                          ),
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 95,
                            height: 24,
                            margin: EdgeInsets.only(left: 36, top: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 15,
                                    height: 24,
                                    child: Image.asset(
                                      "assets/images/icon-material-location-on.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30, top: 1),
                                    child: Text(
                                      "ABUJA",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
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
                        Container(
                          height: 44,
                          margin: EdgeInsets.only(top: 7),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 240, 248, 253),
                          ),
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 150,
                            height: 23,
                            margin: EdgeInsets.only(left: 28, top: 11),
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
                                    margin: EdgeInsets.only(left: 30, top: 4),
                                    child: Text(
                                      "12 June 1984",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
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
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(top: 12),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 234, 234),
                          ),
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 97,
                            height: 24,
                            margin: EdgeInsets.only(left: 27, top: 9),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 15,
                                    height: 22,
                                    child: Image.asset(
                                      "assets/images/icon-ionic-md-female.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 20,
                                    height: 21,
                                    margin: EdgeInsets.only(top: 2),
                                    child: Image.asset(
                                      "assets/images/icon-ionic-md-male.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 19, top: 5),
                                    child: Text(
                                      "MALE",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
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
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 234, 234),
                          ),
                          child: Container(),
                        ),
                        Spacer(),
                        Container(
                          height: 32,
                          margin: EdgeInsets.only(left: 31, right: 146),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 22,
                                  height: 24,
                                  margin: EdgeInsets.only(bottom: 4),
                                  child: Image.asset(
                                    "assets/images/icon-material-notifications-active.png",
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 28, bottom: 5),
                                  child: Text(
                                    "Notification",
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
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 51,
                                  height: 32,
                                  child: Switch.adaptive(
                                    value: true,
                                    inactiveTrackColor: Color.fromARGB(60, 0, 0, 0),
                                    activeColor: Color.fromARGB(255, 184, 184, 184),
                                    activeTrackColor: Color.fromARGB(102, 184, 184, 184),
                                    onChanged: (value) {
                                    
                                    },
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
                    left: 1,
                    top: 234,
                    right: 5,
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 248, 253),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 245,
                    child: Text(
                      "PRIMARY DETAILS",
                      style: TextStyle(
                        color: Color.fromARGB(255, 128, 128, 128),
                        fontSize: 17,
                        fontFamily: "Roboto",
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Positioned(
                    top: 175,
                    right: 96,
                    child: Text(
                      "10",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 36,
                        fontFamily: "Roboto",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 465,
                    child: Text(
                      "OTHER DETAILS",
                      style: TextStyle(
                        color: Color.fromARGB(255, 128, 128, 128),
                        fontSize: 17,
                        fontFamily: "Roboto",
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Positioned(
                    left: 1,
                    top: 454,
                    right: 5,
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 234, 234, 234),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    top: 242,
                    right: 34,
                    child: Container(
                      width: 28,
                      height: 247,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 28,
                              height: 28,
                              child: Image.asset(
                                "assets/images/icon-material-mode-edit.png",
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 28,
                              height: 28,
                              margin: EdgeInsets.only(top: 191),
                              child: Image.asset(
                                "assets/images/icon-material-mode-edit.png",
                                fit: BoxFit.none,
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
            Positioned(
              top: 174,
              child: Text(
                "TOTAL \nORDERS",
                style: TextStyle(
                  color: Color.fromARGB(255, 150, 150, 150),
                  fontSize: 15,
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