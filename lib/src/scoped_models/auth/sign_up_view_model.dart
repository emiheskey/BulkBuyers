import 'package:bulk_buyers/src/data/remote/store_api_provider.dart';
import 'package:bulk_buyers/src/models/registration_model.dart';

import '../base_model.dart';

export 'package:bulk_buyers/src/enums/view_state.dart';

class SignUpViewModel extends BaseModel {
  atemptRegister(
      {String firstName,
      String lastName,
      String password,
      String email,
      String phone}) async {
    setState(ViewState.Busy);

    try {
      var api = ApiProvider();
      var response = await api.registration(Register(
          email: email,
          fname: firstName,
          lname: lastName,
          password: password,
          phone: phone));
      print(response);
      if (response == 200) {
        //sharedPreferences.setString("email", email);
        signUpUser(true);
      }
      return response;
    } catch (exception) {
      print(exception);
    }
  }

  Future<bool> signUpUser(bool valid) async {
    // Update state to loading so we can show indicator
    // setState(ViewState.Busy);

    await Future.delayed(Duration(seconds: 1));
    var signUpResponse =
        valid ? true : false; // Get real response here from service

    // determine state of the view based on response
    var signupStateBasedOnResponse =
        signUpResponse ? ViewState.Success : ViewState.Error;

    // Update the view state based on the response
    setState(signupStateBasedOnResponse);

    // Return the state so wherever the function was called van perform further functionality.
    // Example. Show a dialog to the user indicating that there was a failure
    return true;
  }

  String checkConfirmationPasswordValid(
      {String password, String confirmationPassword}) {
    if (password != confirmationPassword) {
      return 'Please confirm that your passwords are the same';
    }

    return null;
  }
}
