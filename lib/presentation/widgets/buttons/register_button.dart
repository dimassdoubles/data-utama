import 'package:flutter/material.dart';

import '../../../shared/styles/colors.dart';
import '../../../shared/styles/text_styles.dart';

class RegisterButton extends StatelessWidget {
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _telpController;
  final TextEditingController _passController;
  final TextEditingController _passConfirmController;

  const RegisterButton({
    Key? key,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController telpController,
    required TextEditingController passController,
    required TextEditingController passConfirmController,
  })  : _nameController = nameController,
        _emailController = emailController,
        _telpController = telpController,
        _passController = passConfirmController,
        _passConfirmController = passConfirmController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(_nameController.text);
        print(_emailController.text);
        print(_telpController.text);
        print(_passController.text);
        print(_passConfirmController.text);
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
            'DAFTAR',
            style: TextStyle(
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
