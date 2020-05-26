import 'package:bulk_buyers/src/scoped_models/framework_view_model.dart';
import 'package:bulk_buyers/src/ui/shared/font_styles.dart';
import 'package:bulk_buyers/src/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

import 'base_view.dart';


class FrameworkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BaseView<FrameworkViewModel>(
        builder: (context, child, model) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: _getTempUi(context)
            
            )));
  }

  // Remove this when you start deving
  Widget _getTempUi(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        UIHelper.verticalSpaceLarge(),
        Text("Application Name", style: viewTitle),
        UIHelper.verticalSpaceSmall(),
        Text(
            "This view was generated using app skeletons. Thank you for using the tool. I hope it improves your dev process."),
        UIHelper.verticalSpaceMedium(),
        Text(
            "This content is here to show you ui helper functions available in the ui_helper class. You can use spacing like I do or just use margins on the containers itself.")
      ],
    );
  }
}