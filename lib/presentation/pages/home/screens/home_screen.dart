import 'package:flutter/material.dart';

import '../../../widgets/carousel.dart';
import '../../../widgets/list_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListMenu(),
        SizedBox(
          height: 32,
        ),
        Carousel()
      ],
    );
  }
}
