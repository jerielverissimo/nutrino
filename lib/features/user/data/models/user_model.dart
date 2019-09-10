import 'package:nutrino/features/user/domain/entities/user.dart';
import 'package:meta/meta.dart';

class UserModel extends User {
  UserModel({
    @required String name,
    @required String username,
    @required String email,
    @required String password,
  }) : super(name: name, username: username, email: email, password: password);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        password: json["password"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'username': username,
      'email': email,
      password: 'password'
    };
  }
}
