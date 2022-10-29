import 'package:flutter/material.dart';

import '../../../shared/styles/text_styles.dart';

class InputPassword extends StatefulWidget {
  final TextEditingController _controller;

  const InputPassword({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _isObscure = true;

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
        TextFormField(
          controller: widget._controller,
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(12),
            suffixIcon: GestureDetector(
              onTapDown: (details) {
                setState(() {
                  _isObscure = false;
                });
              },
              onTapUp: (details) {
                setState(() {
                  _isObscure = true;
                });
              },
              child: const Icon(
                Icons.remove_red_eye,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
