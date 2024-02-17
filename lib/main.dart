import 'package:flutter/material.dart';
import 'package:pet_shop_application/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pet Store Application",
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}
