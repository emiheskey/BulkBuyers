class LoginFactory{
  final String email;
  final String password;

  LoginFactory({this.email, this.password});

  factory LoginFactory.fromJson(Map<String, dynamic> json) {
    //TODO: Sends User login as Json Objects for Post
    return LoginFactory(
      email: json['email'],
      password: json['password'],
    );
  }

  Map toMap() {
    //TODO: Sends User login as Map Objects
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;


    return map;
  }


}