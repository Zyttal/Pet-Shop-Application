import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme getCustomTextTheme(BuildContext context) {
  return GoogleFonts.poppinsTextTheme(TextTheme(
      displayLarge: const TextStyle(
          fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: const TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      labelLarge: const TextStyle(
          fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
      labelMedium: const TextStyle(
        fontSize: 16,
      ),
      bodyMedium: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      titleMedium: const TextStyle(fontSize: 22),
      bodySmall: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
      displaySmall: TextStyle(fontSize: 13, color: Theme.of(context).hintColor),
      bodyLarge: const TextStyle(fontSize: 18, color: Color(0xFF5F5F63))));
}

ThemeData getCustomThemeData(BuildContext context) {
  return ThemeData(
      textTheme: getCustomTextTheme(context),
      primaryColor: const Color(0xFFE8BE13),
      highlightColor: const Color(0xFFFFBD59),
      hintColor: const Color(0xFFF2F3F2));
}
