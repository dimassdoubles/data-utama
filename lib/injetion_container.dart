import 'package:data_utama/data/data_sources/user_data_source.dart';
import 'package:data_utama/data/repositories/user_repository_impl.dart';
import 'package:data_utama/domain/entities/user.dart';
import 'package:data_utama/domain/repositories/user_repository.dart';
import 'package:data_utama/domain/usecases/login.dart';
import 'package:data_utama/presentation/blocs/auth/authentication_bloc.dart';
import 'package:data_utama/presentation/cubits/page_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton<PageCubit>(() => PageCubit());

  getIt.registerSingleton<UserDataSource>(
    UserDataSourceImpl(
      [
        const User(
          name: "Dimas Saputro",
          email: "admin@gmail.com",
          phone: "08123456789",
          password: "admin",
        ),
        const User(
          name: "Eni Kusrini",
          email: "admin2@gmail.com",
          phone: "08123456789",
          password: "admin",
        ),
      ],
    ),
  );

  getIt.registerSingleton<UserRepository>(UserRepositoryImpl(getIt()));

  getIt.registerLazySingleton<Login>(() => Login(getIt()));

  getIt.registerSingleton<AuthenticationBloc>(AuthenticationBloc(getIt()));
}
