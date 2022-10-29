import 'package:flutter/material.dart';

import '../../../shared/styles/text_styles.dart';

class InputPassConfirmation extends StatefulWidget {
  final TextEditingController _controller;

  const InputPassConfirmation({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  State<InputPassConfirmation> createState() => _InputPassConfirmationState();
}

class _InputPassConfirmationState extends State<InputPassConfirmation> {
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
              'Ulangi Password',
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
          obscureText: true,
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
