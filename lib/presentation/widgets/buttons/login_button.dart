import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/text_styles.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;
  const LoginButton(
      {Key? key,
      required TextEditingController usernameController,
      required TextEditingController passwordController})
      : _usernameController = usernameController,
        _passwordController = passwordController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(_usernameController.text);
        print(_passwordController.text);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: darkBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            'MASUK',
            style: TextStyle(
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
