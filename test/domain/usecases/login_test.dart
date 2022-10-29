import 'package:dartz/dartz.dart';
import 'package:data_utama/domain/entities/user.dart';
import 'package:data_utama/domain/repositories/user_repository.dart';
import 'package:data_utama/domain/usecases/login.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late MockUserRepository repository;
  late Login usecase;

  setUp(
    () {
      repository = MockUserRepository();
      usecase = Login(repository);
    },
  );

  String username = "admin";
  String password = "password";

  User expectedUser = const User(
    name: "Dimas Saputro",
    email: "admin@gmail.com",
    phone: "08123456789",
    password: "admin",
  );

  test(
    "should return User when success login",
    () {
      when(() => repository.login(username, password))
          .thenReturn(Right(expectedUser));

      final result = usecase(username, password);
      verify(() => repository.login(username, password));
      expect(result, Right(expectedUser));
      verifyNoMoreInteractions(repository);
    },
  );
}
