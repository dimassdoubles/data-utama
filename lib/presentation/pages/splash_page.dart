import 'package:data_utama/shared/routes.dart';
import 'package:data_utama/shared/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, loginPage);
              },
              child: Logo()),
          const Loading(),
        ],
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
