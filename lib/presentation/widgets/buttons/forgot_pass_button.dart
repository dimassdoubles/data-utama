import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';

class ForgotPassButton extends StatelessWidget {
  const ForgotPassButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Lupa Password?',
          style: TextStyle(
            color: red,
          ),
        ),
      ),
    );
  }
}
