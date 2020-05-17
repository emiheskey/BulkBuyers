import 'package:bulk_buyers/src/enums/view_state.dart';
import 'package:bulk_buyers/src/scoped_models/auth/sign_up_view_model.dart';
import 'package:bulk_buyers/src/ui/shared/app_colors.dart';
import 'package:bulk_buyers/src/ui/shared/ui_helpers.dart';
import 'package:bulk_buyers/src/ui/views/auth/verify_email_view.dart';

import 'package:flutter/material.dart';

import '../base_view.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String _passwordConfirmaionValidation;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool get _hasEnteredInformation =>
      emailController.text != '' &&
      passwordController.text != '' &&
      confirmPasswordController.text != '' &&
      firstNameController.text != '' &&
      lastNameController.text != '' &&
      phoneController.text != '';

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
        builder: (context, child, model) => Scaffold(
            backgroundColor: whiteSwatch,
            body: Form(
              child: Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.only(top: 50.0),
                child: ListView(children: <Widget>[
                  UIHelper.appLogo(),
                 UIHelper.pageTitle(
                   title: "Sign Up"
                 ),

                  UIHelper.verticalSpaceLarge(),
                  UIHelper.inputFormField(

                      placeholder: 'First Name',
                      controller: firstNameController,
                      validationMessage: "First Name field cannot be empty"),
                  UIHelper.verticalSpaceSmall(),
                  UIHelper.inputFormField(

                      placeholder: 'Last Name',
                      controller: lastNameController,
                      validationMessage: "Last Name field cannot be empty"),
                  UIHelper.verticalSpaceSmall(),
                  UIHelper.inputFormField(

                      placeholder: 'Email Address',
                      controller: emailController,
                      keyboard: TextInputType.emailAddress,
                      validationMessage: "Email field cannot be empty"),
                  UIHelper.verticalSpaceSmall(),
                  UIHelper.inputFormField(

                      placeholder: 'Phone Number',
                      controller: phoneController,
                      keyboard: TextInputType.phone,
                      validationMessage: "Email field cannot be empty"),
                  UIHelper.verticalSpaceSmall(),
                  UIHelper.inputFormField(
                      title: 'Confirm Password',

                      placeholder: 'Enter password',
                      isPassword: true,
                      controller: passwordController),
                  UIHelper.verticalSpaceSmall(),
                  UIHelper.inputFormField(

                      placeholder: 'Confirm password',
                      isPassword: true,
                      controller: confirmPasswordController,
                      validationMessage: _passwordConfirmaionValidation),
                  _getFeedbackUI(model),
                  UIHelper.verticalSpaceSmall(),
                  _getSignUpButton(model),
                  UIHelper.verticalSpaceSmall(),
                  UIHelper.formLInkText(title: "I have an Account? Login here", onTap: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                      builder: (context) =>LoginView()
                    ), (Route<dynamic> route) => false);
                    print("object");
                  }),

                ]),
              ),
            )));
  }

  Widget _getFeedbackUI(SignUpViewModel model) {
    switch (model.state) {
      case ViewState.Busy:
        return Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Center(
            child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor)),
          ),
        );
        break;
      case ViewState.Error:
        // NOTE: Place your Login error UI here
        return Center(child: Text('Could not sign up at this moment'));
      case ViewState.Success:
        // NOTE: Place your login success UI here
        return Center(child: Text('Signup Success'));
      case ViewState.WaitingForInput:
      default:
        return Container();
    }
  }

  Widget _getSignUpButton(SignUpViewModel model) {
    return UIHelper.fullScreenButton(
        title: 'SIGN UP',
        onTap: () async {
          var passwordValidationMessage = model.checkConfirmationPasswordValid(
              password: passwordController.text,
              confirmationPassword: confirmPasswordController.text);

          // No validation errors. Perform signup
          if (passwordValidationMessage == null && _hasEnteredInformation) {
           // print("${firstNameController.text} ${}");
            var viewState =
                 await model.atemptRegister(firstName: firstNameController.text, lastName: lastNameController.text, password: passwordController.text, email: emailController.text, phone: phoneController.text);
            if (viewState == 200) {
              // Navigate to a different view here
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VerifyEmail()));
            }
          } else {
            setState(() {
              _passwordConfirmaionValidation = passwordValidationMessage;
            });
          }
        });
  }
}
