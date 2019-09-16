import '../models/user_model.dart';

abstract class UserLocalDataSource {
  /// Gets the cached [UserModel] which as gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<UserModel> getLastUser();

  Future<void> cacheUser(UserModel userCache);
}
