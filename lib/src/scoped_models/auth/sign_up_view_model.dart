import 'package:bulk_buyers/src/data/remote/store_api_provider.dart';
import 'package:bulk_buyers/src/models/registration_model.dart';

import '../base_model.dart';

export 'package:bulk_buyers/src/enums/view_state.dart';
var api = ApiProvider();
class SignUpViewModel extends BaseModel {
String emailError = "";
  Future<bool> signUpUser(String firstName,
      String lastName,
      String password,
      String email,
      String phone) async {
    setState(ViewState.Busy);
    var response = await api.registration(Register(
        email: email,
        fname: firstName,
        lname: lastName,
        password: password,
        phone: phone));
    switch(response){
      case 200:
        var signUpResponse = false;
        var signupStateBasedOnResponse =
        signUpResponse ? ViewState.Success : ViewState.Error;
        setState(signupStateBasedOnResponse);
        return signUpResponse;
        break;
      case 401:
        var signUpResponse = false;
        emailError = "The email has already been taken";
        var signupStateBasedOnResponse =
        signUpResponse ? ViewState.Success : ViewState.Error;
        setState(signupStateBasedOnResponse);
        return signUpResponse;
        break;
    }

  }

  String checkConfirmationPasswordValid(
      {String password, String confirmationPassword}) {
    if (password != confirmationPassword) {
      return 'Please confirm that your passwords are the same';
    }

    return null;
  }
}
