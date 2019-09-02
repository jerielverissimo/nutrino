import '../entities/user.dart';
import '../repositories/user_repository.dart';
import 'package:nutrino/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<Either<Failure, List<User>>> execute() async {
    return await repository.getUsers();
  }
}
