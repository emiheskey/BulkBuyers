import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/screens/checkout/wishListPage.dart';
import 'package:bulk_buyers/screens/products/productListPage.dart';
import 'package:bulk_buyers/screens/user/youPage.dart';
import 'package:flutter/material.dart';

ScrollController scrollController;
class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int screen;
  int savedScreen = 1;
  double savedOffset = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        leading: Image.asset("assets/images/icon-ionic-ios-menu.png",),
        actions: <Widget>[

          Image.asset("assets/images/icon.png")

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                if (screen == 1) {
                  scrollController.jumpTo(1);
                }
                setState(() {
                  screen = 1;
                  savedScreen = 1;
                });
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                          icon: Image.asset('assets/images/icon-feather-home-2.png'),
                          onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductList()));
                          },
                        )),
                    Text('Home')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (screen != 2) {
                  if (screen == 1) {
                    try {
                      savedOffset = scrollController.offset;
                    } catch (e) {}
                  }
                  setState(() {
                    screen = 2;
                    savedScreen = 2;
                  });
                }
                //Navigator.push(context,   MaterialPageRoute(builder: (context) => Devotional()),);
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                          icon:Image.asset('aassets/images/shopping-cart.png'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()));
                          },
                        )),
                    Text('Cart' )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (screen != 3) {
                  if (screen == 1) {
                    try {
                      savedOffset = scrollController.offset;
                    } catch (e) {}
                  }

                  if (screen == 2) {
                    try {
                      savedOffset = scrollController.offset;
                    } catch (e) {}
                  }

                  setState(() {
                    screen = 3;
                    savedScreen = 3;
                  });
                }
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                          icon: Image.asset('assets/images/icon-feather-heart-2.png'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WishList()));
                          },
                        )),
                    Text('Wish List')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (screen != 4) {
                  if (screen == 1)
                    try {
                      savedOffset = scrollController.offset;
                    } catch (e) {}

                  if (screen == 2) {
                    try {
                      savedOffset = scrollController.offset;
                    } catch (e) {}
                  }

                  setState(() {
                    screen = 4;
                    savedScreen = 4;
                  });
                }
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                          icon: Image.asset('assets/images/icon-feather-user-2.png'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => YouPage()));
                          },
                        )),
                    Text('You', style: TextStyle( color: Colors.blue),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
