import 'package:data_utama/injetion_container.dart';
import 'package:data_utama/presentation/cubits/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/styles/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  final _pageCubit = getIt<PageCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _pageCubit,
      builder: (context, state) => BottomNavigationBar(
        currentIndex: _pageCubit.state,
        selectedItemColor: lightBlue,
        onTap: (value) => _pageCubit.setPage(value),
        iconSize: 21,
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
            label: 'Absensi',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bottom_navbar_icons/profile-icon.png',
            ),
            activeIcon: Image.asset(
              'assets/bottom_navbar_icons/active-profile-icon.png',
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
