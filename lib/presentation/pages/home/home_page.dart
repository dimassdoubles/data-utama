import 'package:data_utama/injetion_container.dart';
import 'package:data_utama/presentation/cubits/page_cubit.dart';
import 'package:data_utama/presentation/pages/home/screens/attendence_screen.dart';
import 'package:data_utama/presentation/pages/home/screens/home_screen.dart';
import 'package:data_utama/presentation/pages/home/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/styles/text_styles.dart';
import '../../widgets/curve_logo.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _pageCubit = getIt<PageCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: 32,
            ),
            Body(pageCubit: _pageCubit),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required PageCubit pageCubit,
  })  : _pageCubit = pageCubit,
        super(key: key);

  final PageCubit _pageCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _pageCubit,
      builder: (context, state) {
        switch (state) {
          case 0:
            return const HomeScreen();
          case 1:
            return const AttendenceScreen();
          case 2:
            return const ProfileScreen();
          default:
            return const HomeScreen();
        }
      },
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
