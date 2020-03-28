import 'package:bulk_buyers/cart_widget/cart_widget.dart';
import 'package:bulk_buyers/data/Store.dart';
import 'package:bulk_buyers/screens/checkout/cartPage.dart';
import 'package:bulk_buyers/screens/checkout/wishListPage.dart';
import 'package:bulk_buyers/screens/products/productListPage.dart';
import 'package:bulk_buyers/screens/user/youPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';

import 'package:bulk_buyers/utils/constants/Constants.dart';
import 'package:bulk_buyers/utils/configs/AppTheme.dart';
import 'package:bulk_buyers/utils/configs/StyleGuide.dart';
import 'package:shared_preferences/shared_preferences.dart';

ScrollController scrollController;
class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  List data;
  int screen;
  int savedScreen = 1;
  double savedOffset = 0;
  bool _isLoading = true;
  int item = 0;


  String token = Store().getToken().toString();
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
      body: _isLoading ? Center(child: CircularProgressIndicator(),) : Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: AppTheme.whiteSwatch,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)
            )
        ),
        child: _buildListItem(),
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
                          icon: Image.asset(
                              'assets/images/icon-feather-home-2.png'),
                          onPressed: () {
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
                          icon: Image.asset('aassets/images/shopping-cart.png'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()));
                          },
                        )),
                    Text('Cart')
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
                          icon: Image.asset(
                              'assets/images/icon-feather-heart-2.png'),
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
                          icon: Image.asset(
                              'assets/images/icon-feather-user-2.png'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => YouPage()));
                          },
                        )),
                    Text('You', style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            )
          ],
        ),

      ),

    );
  }

  Widget _buildListItem() {
    return
        ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return _buildImageColumn(data[index]);
          },

        );



  }

  Widget _buildImageColumn(item) =>
      GestureDetector(
        onTap: () {
          print("${item['productname']} is tapped");

        },
        child: Card(
          elevation: 4,

          margin: EdgeInsets.all(2.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  //  height: 120,
                  width: 120,
                  padding: EdgeInsets.all(5),
                  child:
                  Column(
                    //  mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      CachedNetworkImage(
                        // imageUrl: 'http://3.8.238.181/buyers/public/3'
                        imageUrl: "http://3.8.238.181/buyers/public/${item['productimg']}"
                        ,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                      ),

                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  child:
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 4.0),
                        child: Text(item['productname'],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 4),
                        child: Text("N${item['price'].toString()}",

                          textAlign: TextAlign.left,),
                      ),




                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(onTap: () {
                      setState(() {
                        item++;
                      });

                      print("${item['productid']} is Liked");
                    },
                      child: Icon(Icons.add_circle, color: Colors.green),),

                    SizedBox(height: 35, child: Container(
                      child: Text('${ new ItemCounter(0)}'),
                    ),),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          item--;
                        });

                        print("${item['productname']} is Added to cart");
                      },
                      child:
                      Icon(Icons.remove_circle, color: Colors.green,),),

                  ],

                ),

                ),
              )
            ],

          ),

        ),
      );
  @override
  void initState() {
    // TODO: implement initState
    this.getJSONDATA();
    super.initState();
  }
  Future <List> getJSONDATA() async {

    try{

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString("token");

      print("Token is: $token");

      var response = await http.get(Uri.encodeFull('${Constants.BASE_URL}/wishlist/'), headers: {
        "Accept": "application/json",
        "Authorization" : "Bearer $token"

      });
      if(response.statusCode == 200){
        var jsonResponse = jsonDecode(response.body);
        setState(() {
          _isLoading = false;
          data = jsonResponse;
        });
        print("JsonResponse: $jsonResponse");
      }else{

        print("Request failed with status: ${response.body}. ${response.body}.");
      }
    }
    catch (ex){
      return null;

    }

  }


}
class ItemCounter{
  int value;
  ItemCounter(int _counter){
    value = _counter;



  }
}
