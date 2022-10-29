import 'package:flutter/material.dart';

import '../../../shared/styles/text_styles.dart';

class InputTelp extends StatelessWidget {
  final TextEditingController _controller;

  const InputTelp({
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
            const Icon(Icons.phone),
            const SizedBox(
              width: 4,
            ),
            Text(
              'No HP/WA',
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
