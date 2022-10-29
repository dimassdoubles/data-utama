import 'package:data_utama/shared/routes.dart';
import 'package:data_utama/shared/styles/colors.dart';
import 'package:data_utama/shared/styles/text_styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: const [
              Header(),
              SizedBox(
                height: 64,
              ),
              InputSection(),
              SizedBox(
                height: 64,
              ),
              LoginButton(),
              SizedBox(
                height: 32,
              ),
              RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class InputSection extends StatelessWidget {
  const InputSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InputUsername(),
        SizedBox(
          height: 32,
        ),
        InputPassword(),
        ForgotPassButton(),
      ],
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
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

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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

class InputPassword extends StatelessWidget {
  const InputPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.lock),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Password',
              style: TextStyle(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            isCollapsed: true,
            contentPadding: EdgeInsets.all(12),
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class InputUsername extends StatelessWidget {
  const InputUsername({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.account_circle_rounded),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Username/Email/Phone',
              style: TextStyle(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            isCollapsed: true,
            contentPadding: EdgeInsets.all(12),
          ),
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
