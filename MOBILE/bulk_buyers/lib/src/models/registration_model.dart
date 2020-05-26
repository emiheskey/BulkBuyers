class Register {
  String email;
  String password;
  String fname;
  String lname;
  String phone;

  Register({this.email, this.password, this.fname, this.lname, this.phone});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> register = new Map<String, dynamic>();

    register['email'] = email;
    register['password'] = password;
    register['fname'] = fname;
    register['lname'] = lname;
    register['phone'] = phone;
    return register;
  }

}
