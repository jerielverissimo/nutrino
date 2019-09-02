import 'package:nutrino/core/error/failures.dart';
import 'package:nutrino/features/user/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers();
}
