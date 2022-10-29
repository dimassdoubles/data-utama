// ignore_for_file: must_be_immutable

import 'package:data_utama/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {}

class Unauthenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

class Authenticated extends AuthenticationState {
  User user;
  Authenticated(this.user);

  @override
  List<Object?> get props => [user];
}

class LoginFail extends AuthenticationState {
  String message;
  LoginFail(this.message);

  @override
  List<Object?> get props => [message];
}
