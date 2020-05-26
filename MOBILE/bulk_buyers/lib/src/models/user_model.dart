class User {
  int userid;
  int stateid;
  String fname;
  String lname;
  String dob;
  String address;
  String email;
  String profileimg;
  String phone;
  String created_at;

  User(
      {this.userid,
      this.stateid,
      this.fname,
      this.lname,
      this.dob,
      this.address,
      this.email,
      this.phone,
      this.profileimg,
      this.created_at});

  User.fromJson(Map<String, dynamic> data)
      : phone = data['phone'],
        userid = data['userid'],
        stateid = data['stateid'],
        fname = data['fname'],
        lname = data['lname'],
        dob = data['dob'],
        address = data['address'],
        email = data['email'],
        profileimg = data['profileimg'],
        created_at = data['created_at'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> update = new Map<String, dynamic>();
    update['fname'] = fname;
    update['lname'] = lname;
    update['address'] = address;
    update['dob'] = dob;
    return update;
  }
}
