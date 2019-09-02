import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';

import 'package:nutrino/features/user/domain/entities/user.dart';
import 'package:nutrino/features/user/domain/usecases/get_user.dart';
import 'package:nutrino/features/user/domain/repositories/user_repository.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  GetUser usecase;
  MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = GetUser(mockUserRepository);
  });

  final firstUser = User(
      name: "Jeriel",
      email: "email@example.com",
      username: "jeriel",
      password: "senha");

  final seccondUser = User(
      name: "Yuki",
      email: "email@example.com",
      username: "yuki",
      password: "senha");

  final users = [firstUser, seccondUser];

  test('should get a user list from repository', () async {
    // arrange
    when(mockUserRepository.getUsers()).thenAnswer((_) async => Right(users));

    // act
    final result = await usecase.execute();

    // assert
    expect(result, Right(users));
    verify(mockUserRepository.getUsers());
    verifyNoMoreInteractions(mockUserRepository);
  });
}
