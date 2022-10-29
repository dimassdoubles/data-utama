import 'package:flutter/material.dart';

import '../../shared/styles/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CurveLogo(),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Data Utama',
          style: textStyle1.copyWith(
            fontWeight: bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}

class CurveLogo extends StatelessWidget {
  const CurveLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              bottom: (MediaQuery.of(context).size.width / 5) / 2),
          width: double.infinity,
          child: Image.asset(
            'assets/curve.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          bottom: 0,
          left: (MediaQuery.of(context).size.width / 2) -
              (MediaQuery.of(context).size.width / 5 / 2),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            child: Image.asset('assets/logo.png'),
          ),
        ),
      ],
    );
  }
}
