import 'package:data_utama/shared/routes.dart';
import 'package:data_utama/shared/styles/colors.dart';
import 'package:data_utama/shared/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons/forgot_pass_button.dart';
import '../widgets/buttons/login_button.dart';
import '../widgets/inputs/input_password.dart';
import '../widgets/inputs/input_username.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: 64,
              ),
              InputSection(
                usernameController: _usernameController,
                passwordController: _passwordController,
              ),
              const SizedBox(
                height: 64,
              ),
              LoginButton(
                usernameController: _usernameController,
                passwordController: _passwordController,
              ),
              const SizedBox(
                height: 32,
              ),
              const MoveToRegisterPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class InputSection extends StatelessWidget {
  final TextEditingController _usernameController;
  final TextEditingController _passwordController;

  const InputSection({
    Key? key,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
  })  : _usernameController = usernameController,
        _passwordController = passwordController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputUsername(controller: _usernameController),
        const SizedBox(
          height: 32,
        ),
        InputPassword(controller: _passwordController),
        const ForgotPassButton(),
      ],
    );
  }
}

class MoveToRegisterPage extends StatelessWidget {
  const MoveToRegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Anda Anggota Baru?'),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, registerPage);
          },
          child: Text(
            'DAFTAR DI SINI',
            style: TextStyle(
              color: red,
              fontWeight: bold,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 5,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
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
      ),
    );
  }
}
