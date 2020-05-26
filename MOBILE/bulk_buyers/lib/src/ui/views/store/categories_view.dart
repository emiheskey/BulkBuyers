import 'package:bulk_buyers/src/models/products_model.dart';
import 'package:bulk_buyers/src/scoped_models/store/categories_view_model.dart';
import 'package:bulk_buyers/src/ui/shared/app_colors.dart';
import 'package:bulk_buyers/src/ui/shared/font_styles.dart';
import 'package:flutter/material.dart';

import '../base_view.dart';


class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<CategoriesViewModel>(
        onModelReady: (model) => model.fetchListData(),
        builder: (context, childe, model) => Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: Container(child: _getBodyUi(context, model))));
  }

   Widget _getBodyUi(BuildContext context, CategoriesViewModel model) {
    switch (model.state) {
      case ViewState.Busy:
        return _getLoadingUi(context);
      case ViewState.NoDataAvailable:
        return _noDataUi(context, model);
      case ViewState.Error:
        return _errorUi(context, model);
      case ViewState.DataFetched:
      default:
        return _getListUi(model);
    }
  }

   Widget _getListUi(CategoriesViewModel model) {
    return ListView.builder(
        itemCount: model.listData.length,
        itemBuilder: (context, itemIndex) {
          var item = model.listData[itemIndex];
          return _getListItemUi(item);
        });
  }

  Container _getListItemUi(StoreItems result) {
    return Container(
      height: 100.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: lightGrey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(result.productname, style: viewTitle),
          Text(result.description)
        ],
      ),
    );
  }

  Widget _getLoadingUi(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor)),
        Text('Fetching data ...')
      ],
    ));
  }

  Widget _noDataUi(BuildContext context, CategoriesViewModel model) {
    return _getCenteredViewMessage(
      context, 
      "No data available yet",
      model);
  }

  Widget _errorUi(BuildContext context, CategoriesViewModel model) {
    return _getCenteredViewMessage(
        context, 
        "Error retrieving your data. Tap to try again",
        model,
        error: true);
  }

  Widget _getCenteredViewMessage(
      BuildContext context, String message, CategoriesViewModel model,
      {bool error = false}) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  message,
                  style: viewErrorTitle,
                  textAlign: TextAlign.center,
                ),
                error
                    ? Icon( // WWrap in gesture detector and call you refresh future here
                        Icons.refresh,
                        color: Colors.white,
                        size: 45.0,
                      )
                    : Container()
              ],
            )));
  }
}
