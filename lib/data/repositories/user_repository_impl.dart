import 'package:data_utama/data/data_sources/user_data_source.dart';
import 'package:data_utama/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:data_utama/domain/repositories/user_repository.dart';
import 'package:data_utama/shared/errors/failures.dart';

import '../../shared/errors/exceptions.dart';

class UserRepositoryImpl extends UserRepository {
  UserDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Either<Failure, User> login(String username, String password) {
    try {
      final user = dataSource.findUser(username);

      if (password == user.password) {
        return Right(user);
      } else {
        throw WrongPasswordException();
      }
    } on NoUserException {
      return Left(
        LoginFailure("User Not Found"),
      );
    } on WrongPasswordException {
      return Left(
        LoginFailure("Wrong Password"),
      );
    }
  }
}
