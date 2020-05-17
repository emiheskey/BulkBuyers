
import 'package:bulk_buyers/src/scoped_models/auth/login_view_model.dart';
import 'package:bulk_buyers/src/ui/shared/app_colors.dart';
import 'package:bulk_buyers/src/ui/shared/font_styles.dart';
import 'package:bulk_buyers/src/ui/shared/ui_helpers.dart';
import 'package:bulk_buyers/src/ui/views/auth/sign_up_view.dart';
import 'package:flutter/material.dart';


import '../authenticated_view.dart';
import '../base_view.dart';
import 'forgot_password_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        builder: (context, child, model) => Scaffold(
            backgroundColor: whiteSwatch,
            body: GestureDetector(
              onTap: (){
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.only(top: 50.0),
                child: ListView(children: <Widget>[
                  UIHelper.appLogo(),
                  UIHelper.pageTitle(title: "Login"),
                  UIHelper.verticalSpaceLarge(),
                  UIHelper.inputFormField(
                   // action: model.emailValid(emailController.text),
                    validationMessage: model.emailError,
                      placeholder: 'Enter username', controller: emailController, keyboard: TextInputType.emailAddress ),
                  UIHelper.verticalSpaceMedium(),
                  UIHelper.inputFormField(
                      placeholder: 'Enter password',
                      isPassword: true,
                      controller: passwordController),
                  UIHelper.verticalSpaceMedium(),
                  _getLoginButton(model),
                  UIHelper.verticalSpaceMedium(),
                  _getFeedbackUI(model),
                  UIHelper.verticalSpaceSmaller(),
                  UIHelper.formLInkText(
                      title: "Forgot Password?",
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordView()),
                            (Route<dynamic> route) => false);
                      }),
                  UIHelper.verticalSpaceSmaller(),
                  UIHelper.formLInkText(
                      title: "Don\'t have account? Create one now!",
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => SignUpView()),
                            (Route<dynamic> route) => false);
                      }),
                ]),
              ),
            )));
  }

  Widget _getLoginButton(LoginViewModel model) {
    return UIHelper.fullScreenButton(
        title: "Login",
        onTap: () async {
          print("${emailController.text}  ${passwordController.text}");
          var viewState = await model.atemptLogin(
              email: emailController.text, password: passwordController.text);

          //print(viewState.toString());
          //int res = json.decode(viewState);
          print("this is the Res Item returned: $viewState");
          if (viewState == 200) {
            print("This is block ran");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AuthenticatedView()));
          } else {}
        });
  }

  Widget _getFeedbackUI(LoginViewModel model) {
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
      case ViewState.Success :
        {
          return Center(
              child: Text(
                'Login Success',
                style: formTextSucces,
              ));

        }
        break;
      case ViewState.WaitingForInput:
      default:
        return Container();

    }


   }


}
