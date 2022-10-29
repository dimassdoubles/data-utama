import 'dart:async';

import 'package:data_utama/injetion_container.dart';
import 'package:data_utama/presentation/blocs/auth/authentication_bloc.dart';
import 'package:data_utama/presentation/blocs/auth/authentication_event.dart';
import 'package:data_utama/presentation/blocs/auth/authentication_state.dart';
import 'package:data_utama/shared/routes.dart';
import 'package:data_utama/shared/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final _authBloc = getIt<AuthenticationBloc>();

  @override
  Widget build(BuildContext context) {
    _authBloc.add(AppStart());
    return BlocListener(
      bloc: _authBloc,
      listener: (context, state) {
        if (state is Unauthenticated) {
          Timer(
            const Duration(milliseconds: 3000),
            () => Navigator.pushReplacementNamed(context, loginPage),
          );
        }
      },
      child: Scaffold(
        body: Stack(
          children: const [
            Background(),
            Logo(),
            Loading(),
          ],
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: JumpingText(
          'Loading ...',
          style: textStyle2.copyWith(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/background-splash-page.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
