import 'package:data_utama/domain/entities/user.dart';
import 'package:data_utama/shared/errors/exceptions.dart';

abstract class UserDataSource {
  User findUser(String username);
}

class UserDataSourceImpl extends UserDataSource {
  List<User> listUser;

  UserDataSourceImpl(this.listUser);

  @override
  User findUser(String username) {
    for (int i = 0; i < listUser.length; i++) {
      if (username == listUser[i].email || username == listUser[i].phone) {
        return listUser[i];
      }
    }
    throw NoUserException();
  }
}
