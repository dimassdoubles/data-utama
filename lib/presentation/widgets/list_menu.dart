import 'package:flutter/material.dart';
import 'item_menu.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ItemMenu(title: "Menu 1"),
            ItemMenu(title: "Menu 2"),
            ItemMenu(title: "Menu 3"),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ItemMenu(title: "Menu 4"),
            ItemMenu(title: "Menu 5"),
            ItemMenu(title: "Menu 6"),
          ],
        ),
      ],
    );
  }
}
