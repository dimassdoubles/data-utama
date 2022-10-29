import 'package:dartz/dartz.dart';
import 'package:data_utama/domain/entities/user.dart';
import 'package:data_utama/domain/repositories/user_repository.dart';
import 'package:data_utama/shared/errors/failures.dart';

class Login {
  final UserRepository repository;
  Login(this.repository);

  Either<Failure, User> call(String username, String password) {
    return repository.login(username, password);
  }
}
