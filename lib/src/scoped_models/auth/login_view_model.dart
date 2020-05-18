import 'package:bulk_buyers/src/data/remote/store_api_provider.dart';
import 'package:bulk_buyers/src/models/login_model.dart';
import 'package:bulk_buyers/src/utils/string_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../base_model.dart';

export 'package:bulk_buyers/src/enums/view_state.dart';

class LoginViewModel extends BaseModel {
  String emailError = "";

  atemptLogin({String email, String password}) async {
    setState(ViewState.Busy);
    var api = ApiProvider();
    try {
      print('login strated');
      var response = await api.login(Login(email: email, password: password));
      print(response);
      if (response == 200) {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString("email", email);
        login(true);
      } else {
        print(response);
        emailError = "details not found";
        login(false);
        print(response);
      }
      return response;
    } catch (execption) {
      print(execption);
    }
  }

  // emailValid(String email) {
  //   print(email);
  //   var vaild = StringUtils.isValidEmail(email);
  //   if (vaild) {
  //     emailError = "";
  //   } else {
  //     emailError = "Please enter a vaild Email";
  //   }
  //   notifyListeners();
  // }

  Future<bool> login(bool valid) async {
    await Future.delayed(Duration(seconds: 1));
//      var code = await response.statusCode;
    var loginResult = valid ? true : false;

    // print(response.body);
    // Get real response here from service
    // determine state of the view based on response.
    var loginStateBasedOnReponse =
        loginResult ? ViewState.Success : ViewState.Error;

    // Update the view state based on the response
    setState(loginStateBasedOnReponse);

    return true;
  }
}
