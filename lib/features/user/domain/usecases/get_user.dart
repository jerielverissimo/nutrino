import 'package:nutrino/core/usecases/usecase.dart';

import '../entities/user.dart';
import '../repositories/user_repository.dart';
import 'package:nutrino/core/error/failures.dart';
import 'package:dartz/dartz.dart';

class GetUser implements Usecase<List<User>, NoParams>{
  final UserRepository repository;

  GetUser(this.repository);

  @override
  Future<Either<Failure, List<User>>> call(NoParams params) async {
    return await repository.getUsers();
  }
}
