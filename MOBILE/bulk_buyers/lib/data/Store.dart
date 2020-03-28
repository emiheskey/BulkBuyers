import 'package:shared_preferences/shared_preferences.dart';
class Store{
  String keys;
 getToken() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
     keys = prefs.getString("token");
     return keys;
  }

   //static const token =
}