import 'package:flutter/material.dart';

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
