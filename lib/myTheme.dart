import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final ThemeData lightThemeM3 = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
    ),
  );

  static final ThemeData darkThemeM3 = ThemeData(
    useMaterial3: true,
  );

  static final ThemeData lightThemeM2 = ThemeData(
    useMaterial3: false,
  );
}
