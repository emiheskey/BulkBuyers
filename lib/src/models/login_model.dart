class Login {
  String email;
  String password;

  Login({this.email, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> login = new Map<String, dynamic>();
    login['password'] = password;
    login['email'] = email;
    return login;
  }
}