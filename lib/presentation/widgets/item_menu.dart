import 'package:flutter/material.dart';

import '../../shared/styles/colors.dart';

class ItemMenu extends StatelessWidget {
  final String _title;
  const ItemMenu({
    Key? key,
    required String title,
  })  : _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 32 * 3) / 3,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  offset: const Offset(0, 8),
                  blurRadius: 24,
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Icon(
                  Icons.image_outlined,
                  color: grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(_title),
        ],
      ),
    );
  }
}
