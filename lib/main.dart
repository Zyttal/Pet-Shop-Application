import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pet_shop_application/routes.dart';
import 'package:pet_shop_application/stylings_and_themes.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pet Store Application",
      initialRoute: '/',
      routes: getApplicationRoutes(),
      theme: getCustomThemeData(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
