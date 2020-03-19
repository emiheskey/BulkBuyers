import 'dart:convert';

import 'package:bulk_buyers/models/RegisterFactoryModel.dart';
import 'package:http/http.dart' as http;
import 'package:bulk_buyers/utils/constants/Constants.dart';
/**
 * Created 11 Mar 2020
 * Login Model Class to handle the user authentication and network calls
 * **/

class Register {
  Future<RegisterFactory> registerUsers(String url, {Map body}) async {
    return http.post(url, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;
      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return RegisterFactory.fromJson(json.decode(response.body));
    });

  }
}
