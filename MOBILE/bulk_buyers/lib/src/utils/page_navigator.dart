import 'package:shared_preferences/shared_preferences.dart';

navigation() async {
  bool status;
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  String state = sharedPreferences.getString("state");

  if (state == null) {
    print(state);
    status = false;
    print(status);
  } else {
    print(state);
    status = true;
  }
  return status;
}
