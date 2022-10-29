import 'package:data_utama/shared/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../../shared/styles/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Header(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: lightBlue,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottom_navbar_icons/home-icon.png',
          ),
          activeIcon: Image.asset(
            'assets/bottom_navbar_icons/active-home-icon.png',
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottom_navbar_icons/attendence-icon.png',
          ),
          activeIcon: Image.asset(
            'assets/bottom_navbar_icons/active-attendence-icon.png',
          ),
          label: 'Attendence',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/bottom_navbar_icons/profile-icon.png',
          ),
          activeIcon: Image.asset(
            'assets/bottom_navbar_icons/active-profile-icon.png',
          ),
          label: 'Attendence',
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
    return Column(
      children: [
        const CurveLogo(),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Data Utama',
          style: textStyle1.copyWith(
            fontWeight: bold,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}

class CurveLogo extends StatelessWidget {
  const CurveLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
              bottom: (MediaQuery.of(context).size.width / 5) / 2),
          width: double.infinity,
          child: Image.asset(
            'assets/curve.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          bottom: 0,
          left: (MediaQuery.of(context).size.width / 2) -
              (MediaQuery.of(context).size.width / 5 / 2),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 5,
            child: Image.asset('assets/logo.png'),
          ),
        ),
      ],
    );
  }
}
