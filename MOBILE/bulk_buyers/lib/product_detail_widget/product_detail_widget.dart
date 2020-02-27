
import 'package:flutter/material.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';


class ProductDetailWidget extends StatelessWidget {
  
  void onViewPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CartWidget()));
  
  void onIcArrowBack18pxPressed(BuildContext context) => Navigator.pop(context);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            stops: [
              0,
              1,
            ],
            colors: [
              Color.fromARGB(255, 252, 144, 0),
              Color.fromARGB(255, 253, 99, 0),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: -238,
              top: -85,
              right: -239,
              bottom: -107,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 152,
                    right: 0,
                    child: Container(
                      height: 852,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 253, 253),
                        borderRadius: BorderRadius.all(Radius.circular(426)),
                      ),
                      child: Container(),
                    ),
                  ),
                  Positioned(
                    left: 180,
                    top: 0,
                    right: 231,
                    bottom: 107,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 210,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 162,
                                  height: 162,
                                  child: Opacity(
                                    opacity: 0.459,
                                    child: Image.asset(
                                      "assets/images/path-4738.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(top: 28),
                                  child: Opacity(
                                    opacity: 0.577,
                                    child: Container(
                                      width: 182,
                                      height: 182,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          stops: [
                                            0,
                                            1,
                                          ],
                                          colors: [
                                            Color.fromARGB(255, 226, 131, 4),
                                            Color.fromARGB(255, 253, 173, 0),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(91)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 306,
                            margin: EdgeInsets.only(top: 358, right: 39),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text(
                                "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 29, 29, 29),
                                  fontSize: 13,
                                  fontFamily: "Roboto",
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 73, top: 39),
                            child: Text(
                              "Related Items",
                              style: TextStyle(
                                color: Color.fromARGB(255, 28, 27, 27),
                                fontSize: 16,
                                fontFamily: "Roboto",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 116,
                          margin: EdgeInsets.only(left: 73, right: 22, bottom: 48),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(31, 0, 0, 0),
                                offset: Offset(0, 2),
                                blurRadius: 52,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 31,
                                margin: EdgeInsets.only(left: 113, top: 10, right: 11),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 15),
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
                                    ),
                                    Spacer(),
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 113, top: 10),
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
                              Container(
                                height: 26,
                                margin: EdgeInsets.only(left: 113, right: 11, bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 11),
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
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.bottomLeft,
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
                                              Color.fromARGB(255, 252, 144, 0),
                                              Color.fromARGB(255, 253, 173, 0),
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
                        Container(
                          height: 51,
                          margin: EdgeInsets.only(left: 58, right: 8),
                          child: FlatButton(
                            onPressed: () => this.onViewPressed(context),
                            color: Colors.transparent,
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Image.asset("assets/images/icon-feather-shopping-cart-4.png",),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 263,
                    top: 111,
                    child: Container(
                      width: 325,
                      height: 438,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 27,
                              height: 27,
                              child: FlatButton(
                                onPressed: () => this.onIcArrowBack18pxPressed(context),
                                color: Colors.transparent,
                                textColor: Color.fromARGB(255, 0, 0, 0),
                                padding: EdgeInsets.all(0),
                                child: Image.asset("assets/images/ic-arrow-back-18px-2.png",),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 325,
                              height: 398,
                              margin: EdgeInsets.only(top: 13),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(23, 0, 0, 0),
                                    offset: Offset(0, 2),
                                    blurRadius: 52,
                                  ),
                                ],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Container(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 293,
                    top: 445,
                    child: Container(
                      width: 159,
                      height: 74,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Opacity(
                              opacity: 0.68,
                              child: Text(
                                "N 32,000",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18,
                                  fontFamily: "Roboto",
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Text(
                                "Cow meat ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 10),
                              child: Opacity(
                                opacity: 0.3,
                                child: Text(
                                  "HALF OF A WHOLE COW",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14,
                                    fontFamily: "Roboto",
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 172,
                    right: 284,
                    child: Container(
                      width: 30,
                      height: 27,
                      child: Image.asset(
                        "assets/images/icn-fav.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 263,
                    top: 224,
                    bottom: 233,
                    child: Container(
                      width: 299,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 289,
                              height: 212,
                              margin: EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/images/happycows-cow.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 93,
                              height: 62,
                              child: Image.asset(
                                "assets/images/adobestock-159239671-2.png",
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
              top: 29,
              child: Text(
                "Details",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontFamily: "Roboto",
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}