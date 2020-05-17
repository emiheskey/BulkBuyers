import 'package:bulk_buyers/src/ui/shared/font_styles.dart';
import 'package:bulk_buyers/src/ui/shared/ui_helpers.dart';
import 'package:bulk_buyers/src/ui/views/auth/login_view.dart';
import 'package:bulk_buyers/src/ui/views/auth/password_rest_confirmation_view.dart';
import 'package:flutter/material.dart';
import 'package:bulk_buyers/src/scoped_models/auth/forgot_password_view_model.dart';
import 'package:bulk_buyers/src/ui/views/base_view.dart';

class ForgotPasswordView extends StatelessWidget {
  TextEditingController forgotPassswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BaseView<ForgotPasswordViewModel>(
        builder: (context, child, model) => Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body: Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          UIHelper.verticalSpace(80.0),
                          Center(
                            child: UIHelper.appLogo(fit: BoxFit.cover),
                          ),
                          UIHelper.verticalSpaceSmall(),
                          UIHelper.pageTitle(title: "Forgot Password"),
                          UIHelper.verticalSpaceLarge(),
                          UIHelper.inputFormField(
                            validationMessage: model.emailError,
                            action: model.emailValid(forgotPassswordController.text) ,
                              controller: forgotPassswordController,
                              placeholder: "Enter Email"),
                          UIHelper.verticalSpace(5.0),
                          UIHelper.descriptionText(
                              title: "Please Ensure you use the right email",
                              onTap: null),
                          UIHelper.verticalSpaceSmall(),
                          _getLoginButton(context, model),
                          UIHelper.verticalSpaceSmaller(),
                          _getFeedbackUI(context, model),
//                  UIHelper.fullScreenButton(title: "Email Password"),
                          UIHelper.verticalSpaceSmaller(),
                          UIHelper.formLInkText(
                              title: "I Think I remeber my password",
                              onTap: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginView()),
                                    (Route<dynamic> route) => false);
                              })
                        ],
                      ),
                    ],
                  ),
                ))));
  }

  Widget _getLoginButton(BuildContext context, ForgotPasswordViewModel model) {
    return UIHelper.fullScreenButton(
        title: "Email Password",
        onTap: () async {
         if(model.isValidEmail){
          var viewState =
              await model.passwordReset(forgotPassswordController.text);
          if (viewState == 200) {
            print("This is block ran");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResetConfrimation()));
          } else {}}
          return null;
        });
  }

  Widget _getFeedbackUI(BuildContext context, ForgotPasswordViewModel model) {
    switch (model.state) {
      case ViewState.Busy:
        return Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor)),
        );
        break;
      case ViewState.Error:
        return Center(
            child: Text(
          'Could not log in at this moment',
          style: formTextError,
        ));
      case ViewState.Success:
        {
          return Center(
              child: Text(
            'Kindly check your eamil for a rest link',
            style: formTextSucces,
          ));
        }
        break;
      case ViewState.WaitingForInput:
      default:
        return Container();
    }
  }

//  Widget _getBodyUi(BuildContext context, ForgotPasswordViewModel model){
//    switch (model.state) {
//      case ViewState.Busy:
//        return _getLoadingUi(context);
//      case ViewState.NoDataAvailable:
//        return _noDataUi(context, model);
//      case ViewState.Error:
//        return _errorUi(context, model);
//      case ViewState.DataFetched:
//      default:
//        return _getListUi(model);
//    }
//  }

//  Widget _getLoadingUi(BuildContext context) {
//    return Center(
//        child: Column(
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
//            CircularProgressIndicator(
//                valueColor:
//                AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor)),
//            Text('Fetching data ...')
//          ],
//        ));
//  }
//  Widget _noDataUi(BuildContext context, ForgotPasswordViewModel model) {
//    return _getCenteredViewMessage(
//        context,
//        "No data available yet",
//        model);
//  }
//  Widget _errorUi(BuildContext context, ForgotPasswordViewModel model) {
//    return _getCenteredViewMessage(
//        context,
//        "Error retrieving your data. Tap to try again",
//        model,
//        error: true);
//  }
//  Widget _getCenteredViewMessage(
//      BuildContext context, String message, ForgotPasswordViewModel model,
//      {bool error = false}) {
//    return Center(
//        child: Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 20.0),
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                Text(
//                  message,
//                  style: viewErrorTitle,
//                  textAlign: TextAlign.center,
//                ),
//                error
//                    ? Icon( // WWrap in gesture detector and call you refresh future here
//                  Icons.refresh,
//                  color: Colors.white,
//                  size: 45.0,
//                )
//                    : Container()
//              ],
//            )));
//  }
//  Widget _getFeedbackUI(ForgotPasswordViewModel model) {
//    switch (model.state) {
//      case ViewState.Busy:
//        return Center(
//          child: CircularProgressIndicator(
//              valueColor: AlwaysStoppedAnimation<Color>(
//                  Theme.of(context).primaryColor)),
//        );
//        break;
//      case ViewState.Error:
//        return Center(
//            child: Text(
//          'Could not log in at this moment',
//          style: formTextError,
//        ));
//      case ViewState.Success:
//        {
//          return Center(
//              child: Text(
//            'Login Success',
//            style: formTextSucces,
//          ));
//        }
//        break;
//      case ViewState.WaitingForInput:
//      default:
//        return Container();
//    }
//  }
}
