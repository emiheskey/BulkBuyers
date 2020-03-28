import 'package:bulk_buyers/all_products_list_widget/all_products_list_widget.dart';
import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/models/TabIconData.dart';
import 'package:bulk_buyers/screens/checkout/cartPage.dart';
import 'package:bulk_buyers/screens/checkout/wishListPage.dart';
import 'package:bulk_buyers/screens/products/productListPage.dart';
import 'package:bulk_buyers/screens/user/youPage.dart';
import 'package:bulk_buyers/shop_category_widget/shop_category_widget.dart';
import 'package:bulk_buyers/utils/UIComponents/BottomBarView.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/StyleGuide.dart';
import 'package:bulk_buyers/wishlist_widget/wishlist_widget.dart';
import 'package:bulk_buyers/you_widget/you_widget.dart';
import 'package:flutter/material.dart';

ScrollController scrollController;
class LoggedIn extends StatefulWidget {
  @override
  _LoggedInState createState() => _LoggedInState();

}

class _LoggedInState extends State<LoggedIn> with TickerProviderStateMixin{
  AnimationController animationController;
  int screen;
  int savedScreen = 1;
  double savedOffset = 0;
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;
  Widget tabBody = Container(
    color: AppTheme.whiteSwatch,
  );
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
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => ProductList()),
                                    (Route<dynamic> route) => false);
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
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => CartPage()),
                                    (Route<dynamic> route) => false);
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
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => WishList()),
                                    (Route<dynamic> route) => false);
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
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (BuildContext context) => YouPage()),
                                    (Route<dynamic> route) => false);
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

             Container(
               height: 40,
             ),
               Container(
                child: Image.asset(
                  "assets/images/icon-awesome-thumbs-up.png",
                  fit: BoxFit.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                    "HURRY!",
                  style: AppStyle.subHeading2,
                ),
              ),
              Text(
                 "Welcome to Bulk Buyers\n Connect! ",
                style: AppStyle.subHeading3,
                textAlign: TextAlign.center,
              )

            ],
//

          ),
      ),




    );
  }

//  Future <bool> getData()  async{
//    await Future.delayed(const Duration(milliseconds: 200));
//    return true;
//  }

//  Widget bottomBar(){
//    return Column(
//      children: <Widget>[
//        Expanded(
//          child: SizedBox(),
//        ),
//        BottomBarView(
//          tabIconsList: tabIconsList,
//          addClick: () {},
//          changeIndex: (index) {
//            if(index == 0 || index == 2  ){
//             animationController.reverse().then((data){
//               if(!mounted) return;
//                 setState(() {
//                   tabBody = ShopCategoryWidget();
//                 });
//             });
//
//            }else if (index == 1 || index ==3){
//              animationController.reverse().then((data){
//                if(!mounted) return;
//                setState(() {
//                  tabBody = CartWidget();
//                });
//              });
//
//
//            }
//
//          },
//        )
//      ],
//    );
//  }

}

//if (index == 0 || index == 2) {
//
//if (!mounted) return;
//
//);
//} else if (index == 1 || index == 3) {
//if (!mounted) return;
//
//);
//}

