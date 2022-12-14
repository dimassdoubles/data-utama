import 'package:flutter/material.dart';
import 'shared/routes.dart' as route;
import 'injetion_container.dart' as injection;

void main() async {
  await injection.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      initialRoute: route.splashPage,
    );
  }
}
