import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  /// Calls the http://localhost:8080/api/{user} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<UserModel> getUser();
}
