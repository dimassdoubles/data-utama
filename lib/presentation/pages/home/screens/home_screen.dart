import 'package:carousel_slider/carousel_slider.dart';
import 'package:data_utama/shared/styles/colors.dart';
import 'package:flutter/material.dart';

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

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(aspectRatio: 547 / 267),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Card(
                elevation: 3,
                child: Image.asset('assets/carousel_img/img-1.png'),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

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
            MenuItem(title: "Menu 1"),
            MenuItem(title: "Menu 2"),
            MenuItem(title: "Menu 3"),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            MenuItem(title: "Menu 4"),
            MenuItem(title: "Menu 5"),
            MenuItem(title: "Menu 6"),
          ],
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String _title;
  const MenuItem({
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
