import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {}

class AppStart extends AuthenticationEvent {
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class LoggedIn extends AuthenticationEvent {
  String username;
  String password;
  LoggedIn(this.username, this.password);
  @override
  List<Object?> get props => [username, password];
}
