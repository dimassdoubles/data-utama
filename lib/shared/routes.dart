import 'package:data_utama/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

const String splashPage = "splash-page";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashPage:
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    default:
      throw ("This route name doesn't exist");
  }
}
