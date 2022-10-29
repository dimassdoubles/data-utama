import 'package:data_utama/presentation/blocs/auth/authentication_event.dart';
import 'package:data_utama/presentation/blocs/auth/authentication_state.dart';
import 'package:data_utama/shared/errors/failures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/login.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final Login login;

  AuthenticationBloc(this.login) : super(Unauthenticated()) {
    on<AppStart>(
      (event, emit) {
        emit(Unauthenticated());
      },
    );

    on<LoggedIn>(
      (event, emit) {
        final failureOrUser = login(event.username, event.password);
        failureOrUser.fold(
          (l) {
            if (l is LoginFailure) {
              emit(
                LoginFail(
                  l.message,
                ),
              );
            }
          },
          (r) => emit(
            Authenticated(r),
          ),
        );
      },
    );
  }
}
