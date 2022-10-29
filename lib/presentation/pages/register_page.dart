import 'package:flutter/material.dart';

import '../widgets/inputs/input_email.dart';
import '../widgets/inputs/input_name.dart';
import '../widgets/inputs/input_pass_confirmation.dart';
import '../widgets/inputs/input_password.dart';
import '../widgets/inputs/input_phone.dart';
import '../widgets/buttons/register_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _passConfirmController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passController.dispose();
    _passConfirmController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Pendaftaran',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              const InputGender(),
              const SizedBox(
                height: 16,
              ),
              InputName(controller: _nameController),
              const SizedBox(
                height: 16,
              ),
              InputEmail(controller: _emailController),
              const SizedBox(
                height: 16,
              ),
              Inputphone(controller: _phoneController),
              const SizedBox(
                height: 16,
              ),
              InputPassword(controller: _passController),
              const SizedBox(
                height: 16,
              ),
              InputPassConfirmation(controller: _passConfirmController),
              const SizedBox(
                height: 32,
              ),
              RegisterButton(
                nameController: _nameController,
                emailController: _emailController,
                phoneController: _phoneController,
                passController: _passController,
                passConfirmController: _passConfirmController,
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputGender extends StatelessWidget {
  const InputGender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio(
              value: "l",
              groupValue: "gender",
              onChanged: (value) {},
            ),
            const Text('PRIA'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: "p",
              groupValue: "gender",
              onChanged: (value) {},
            ),
            const Text('WANITA')
          ],
        ),
      ],
    );
  }
}
