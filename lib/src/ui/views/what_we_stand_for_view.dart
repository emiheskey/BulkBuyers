import 'package:bulk_buyers/src/ui/shared/app_colors.dart';
import 'package:bulk_buyers/src/ui/shared/font_styles.dart';
import 'package:bulk_buyers/src/ui/shared/ui_helpers.dart';
import 'package:bulk_buyers/src/ui/views/store/shop_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'checkout/cart_view.dart';
import 'checkout/wish_list_view.dart';
import 'user/profile_view.dart';

class WhatWeStandFor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/icon.png"),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 350),
                        pageBuilder: (context, _, __) => ShopView()));
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                      icon: Image.asset('assets/images/home.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 350),
                                pageBuilder: (context, _, __) => ShopView()));
                      },
                    )),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 350),
                        pageBuilder: (context, _, __) => CartView()));
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                      icon: Image.asset('assets/images/cart.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 350),
                                pageBuilder: (context, _, __) => CartView()));
                      },
                    )),
                    Text(
                      'Cart',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 350),
                        pageBuilder: (context, _, __) => WishListView()));
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                      icon: Image.asset('assets/images/wishlist.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 350),
                                pageBuilder: (context, _, __) =>
                                    WishListView()));
                      },
                    )),
                    Text('Wish List', style: TextStyle(color: Colors.blue))
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 350),
                        pageBuilder: (context, _, __) => ProfileView()));
              },
              child: Container(
                height: 58,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                      icon: Image.asset(
                        'assets/images/you_selected.png',
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 350),
                                pageBuilder: (context, _, __) =>
                                    ProfileView()));
                      },
                    )),
                    Text('You', style: TextStyle(color: primarySwatch))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
            color: whiteSwatch,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0))),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("We stand for:",
                          style: const TextStyle(
                              color: const Color(0xfffb6603),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Helvetica",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          textAlign: TextAlign.left)),
                ),
                UIHelper.verticalSpaceSmaller(),
                // Rectangle 2107
                Center(
                  child: Container(
                    width: 340,
                    height: 325,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: const Color(0xffb3e0fc)),
                    child: Column(
                      children: <Widget>[
                        UIHelper.verticalSpace(2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/quality.png',
                                scale: 1.5,
                              ),
                            ),
                            UIHelper.horizontalSpaceSmall(),
                            Text(
                              'Quality',
                              style: const TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 29.0),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/price.png',
                                scale: 1.5,
                              ),
                            ),
                            UIHelper.horizontalSpaceMedium(),
                            Text(
                              'Price',
                              style: const TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 29.0),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'assets/images/speed.png',
                                scale: 1.5,
                              ),
                            ),
                            UIHelper.horizontalSpaceSmall(),
                            Text(
                              'Speed',
                              style: const TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 29.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                UIHelper.verticalSpaceMedium(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 30.0),
                  child: Text("Feedback and Support",
                      style: const TextStyle(
                          color: const Color(0xfffb6500),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Helvetica",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                      textAlign: TextAlign.left),
                ),
                Divider(),
                // Call us: +234 809 975 5559
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                style: const TextStyle(
                                    color:  const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                text: "Call us: "),
                            TextSpan(
                                style: const TextStyle(
                                    color:  const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                text: "+234 809 975 5559")
                          ]
                      )
                  ),
                ),
                // Email us:  info@bulkbuyersconnect.com
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                style: const TextStyle(
                                    color:  const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                text: "Email us:  "),
                            TextSpan(
                                style: const TextStyle(
                                    color:  const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 16.0
                                ),
                                text: " info@bulkbuyersconnect.com")
                          ]
                      )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
