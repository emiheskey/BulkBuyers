//import 'package:flutter/cupertino.dart';
//
//class BottomNavigation{
//
//  Widget Bottom(){
//    BottomAppBar(
//      color: Colors.transparent,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          InkWell(
//            onTap: () {
//              if (screen == 1) {
//                scrollController.jumpTo(1);
//              }
//              setState(() {
//                screen = 1;
//                savedScreen = 1;
//              });
//            },
//            child: Container(
//              height: 58,
//              child: Column(
//                children: <Widget>[
//                  Expanded(
//                      child: IconButton(
//                        icon: Image.asset('assets/images/icon-feather-home-2.png'),
//                        onPressed:(){
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => ProductList()));
//                        },
//                      )),
//                  Text('Home')
//                ],
//              ),
//            ),
//          ),
//          InkWell(
//            onTap: () {
//              if (screen != 2) {
//                if (screen == 1) {
//                  try {
//                    savedOffset = scrollController.offset;
//                  } catch (e) {}
//                }
//                setState(() {
//                  screen = 2;
//                  savedScreen = 2;
//                });
//              }
//              //Navigator.push(context,   MaterialPageRoute(builder: (context) => Devotional()),);
//            },
//            child: Container(
//              height: 58,
//              child: Column(
//                children: <Widget>[
//                  Expanded(
//                      child: IconButton(
//                        icon:Image.asset('aassets/images/icon-feather-shopping-cart.png'),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => CartPage()));
//                        },
//                      )),
//                  Text('Cart' )
//                ],
//              ),
//            ),
//          ),
//          InkWell(
//            onTap: () {
//              if (screen != 3) {
//                if (screen == 1) {
//                  try {
//                    savedOffset = scrollController.offset;
//                  } catch (e) {}
//                }
//
//                if (screen == 2) {
//                  try {
//                    savedOffset = scrollController.offset;
//                  } catch (e) {}
//                }
//
//                setState(() {
//                  screen = 3;
//                  savedScreen = 3;
//                });
//              }
//            },
//            child: Container(
//              height: 58,
//              child: Column(
//                children: <Widget>[
//                  Expanded(
//                      child: IconButton(
//                        icon: Image.asset('assets/images/icon-feather-heart-2.png'),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => WishList()));
//                        },
//                      )),
//                  Text('Wish List')
//                ],
//              ),
//            ),
//          ),
//          InkWell(
//            onTap: () {
//              if (screen != 4) {
//                if (screen == 1)
//                  try {
//                    savedOffset = scrollController.offset;
//                  } catch (e) {}
//
//                if (screen == 2) {
//                  try {
//                    savedOffset = scrollController.offset;
//                  } catch (e) {}
//                }
//
//                setState(() {
//                  screen = 4;
//                  savedScreen = 4;
//                });
//              }
//            },
//            child: Container(
//              height: 58,
//              child: Column(
//                children: <Widget>[
//                  Expanded(
//                      child: IconButton(
//                        icon: Image.asset('assets/images/icon-feather-user-2.png'),
//                        onPressed: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => YouPage()));
//                        },
//                      )),
//                  Text('You', style: TextStyle( color: Colors.blue),)
//                ],
//              ),
//            ),
//          )
//        ],
//      ),
//    ),
//  }
//}