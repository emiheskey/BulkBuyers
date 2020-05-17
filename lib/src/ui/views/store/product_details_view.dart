
import 'package:bulk_buyers/src/data/local/database_helper.dart';
import 'package:bulk_buyers/src/scoped_models/store/shop_view_model.dart';
import 'package:bulk_buyers/src/ui/shared/app_colors.dart';
import 'package:bulk_buyers/src/ui/views/user/you_view.dart';

import 'package:flutter/material.dart';

import '../base_view.dart';

class ProductDetailsView extends StatefulWidget {
  final int id;
  ProductDetailsView({this.id});
  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  var products;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return  BaseView<ShopViewModel>(
        builder: (context, child, model) => Scaffold(
             appBar: AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: ()=> Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 350),
                              pageBuilder: (context, _, __) => YouView())),
                              child: Image.asset(
                  "assets/images/icon-ios-menu.png",
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/icon.png"),
                )
              ],
            ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: 
            Container(
              child: Container(

              ),
            ))));
  }

  Widget _detailsView(ShopViewModel model){

    return Container(
      child: Column(
        children: <Widget>[
          
        ],
      ),
    );

  }





}