import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String _name, _email, _phone, _password;

  const User({
    required String name,
    required String email,
    required String phone,
    required String password,
  })  : _name = name,
        _email = email,
        _phone = phone,
        _password = password;

  String get name {
    return _name;
  }

  String get email {
    return _email;
  }

  String get phone {
    return _phone;
  }

  String get password {
    return _password;
  }

  @override
  List<Object?> get props => [_name, _email, _phone, _password];
}
