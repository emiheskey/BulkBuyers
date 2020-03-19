import 'dart:convert';

import 'package:bulk_buyers/models/LoginFactory.dart';
import 'package:http/http.dart' as http;
import 'package:bulk_buyers/utils/constants/Constants.dart';
//import 'package:bulk_buyers/utils/configs//';
/** 
 * Created 11 Mar 2020
 * Login Model Class to handle the user authentication and network calls
 * **/

class Login {
  static Future<List<dynamic>> getUserDetails() async {
    try {
      final response = await http.get('${Constants.BASE_URL}/access');
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
    
  }
}


Future<LoginFactory> loginUsers(String url, {Map body}) async {
  return http.post(url, body: body).then((http.Response response) {
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400 || json == null) {
      throw new Exception("Error while fetching data");
    }
    return LoginFactory.fromJson(json.decode(response.body));
  });

}