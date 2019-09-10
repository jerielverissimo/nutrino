import 'dart:convert';
import 'package:nutrino/features/user/domain/entities/user.dart';
import 'package:nutrino/features/user/data/models/user_model.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tUserModel = UserModel(
      name: "Jeriel",
      email: "email@example.com",
      password: "password",
      username: "jeriel");

  test('should return be a subclass of User entity', () async {
    // assert
    expect(tUserModel, isA<User>());
  });

  group('fromJson', () {
    test(
      'should return a valid model when the JSON data is valid',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('user.json'));
        // act
        final result = UserModel.fromJson(jsonMap);
        // assert
        expect(result, tUserModel);
      },
    );
  });
}
