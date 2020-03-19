import 'package:bulk_buyers/utils/constants/Constants.dart';

class RegisterFactory {
  final String email;
  final String password;
  final String firstName;
  final String lastName;
  final int phone;
  static const REGISTRATION_URL = "${Constants.BASE_URL}/register";

  RegisterFactory(
      {this.email, this.password, this.firstName, this.lastName, this.phone});

  factory RegisterFactory.fromJson(Map<String, dynamic> json) {
    //TODO: Create User Registration Json Objects for Post
    return RegisterFactory(
      email: json['email'],
      password: json['password'],
      firstName: json['name'],
      lastName: json['lname'],
      phone: json['phone'],
    );
  }

  Map toMap() {
    //TODO: Create User Registration Map Objects
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;
    map["firstName"] = firstName;
    map["lastName"] = lastName;
    map["phone"] = phone;

    return map;
  }
}
