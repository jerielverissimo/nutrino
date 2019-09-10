import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
  final String name;
  final String username;
  final String email;
  final String password;

  User(
      {@required String this.name,
      @required String this.username,
      @required String this.email,
      @required String this.password})
      : super(
          [name, username, email, password],
        );
}
