import 'package:flutter/material.dart';

TextTheme responsiveTextTheme(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

  double scale;
  if (width < 600) {
    scale = 1.0; // Mobile
  } else if (width < 1024) {
    scale = 1.1; // Tablet
  } else {
    scale = 1.2; // Desktop
  }

  return TextTheme(
    bodySmall: TextStyle(fontSize: 12 * scale),
    bodyMedium: TextStyle(fontSize: 14 * scale),
    bodyLarge: TextStyle(fontSize: 16 * scale),
    labelMedium: TextStyle(fontSize: 13 * scale),
    titleSmall: TextStyle(fontSize: 16 * scale),
    titleMedium: TextStyle(fontSize: 18 * scale),
    titleLarge: TextStyle(fontSize: 22 * scale),
  );
}
