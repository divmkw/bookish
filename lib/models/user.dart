
class User {
  String email;
  String password;
  String utype;

  User({required this.email, required this.password, required this.utype});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'utype': utype,
    };
  }
}
