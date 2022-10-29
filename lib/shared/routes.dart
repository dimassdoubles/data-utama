import 'package:data_utama/presentation/pages/login_page.dart';
import 'package:data_utama/presentation/pages/register_page.dart';
import 'package:data_utama/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

const String splashPage = "splash-page";
const String loginPage = "login-page";
const String registerPage = "register-page";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case registerPage:
      return MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      );
    case loginPage:
      return MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
    case splashPage:
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    default:
      throw ("This route name doesn't exist");
  }
}
