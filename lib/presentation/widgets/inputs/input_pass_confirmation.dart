import 'package:flutter/material.dart';

import '../../../shared/styles/text_styles.dart';

class InputPassConfirmation extends StatelessWidget {
  final TextEditingController _controller;

  const InputPassConfirmation({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

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
          controller: _controller,
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
