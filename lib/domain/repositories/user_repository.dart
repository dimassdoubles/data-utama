import 'package:dartz/dartz.dart';
import 'package:data_utama/domain/entities/user.dart';
import 'package:data_utama/shared/errors/failures.dart';

abstract class UserRepository {
  Either<Failure, User> login(String username, String password);
}
