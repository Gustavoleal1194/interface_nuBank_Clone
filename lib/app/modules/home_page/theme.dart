import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = _buildDarkTheme();
  static final lightTheme = _buildLightTheme();

  static ThemeData _buildDarkTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
      scaffoldBackgroundColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.white.withOpacity(0.5);
            }
            return Colors.white;
          }),
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
      ),
      colorScheme: const ColorScheme.dark(
        primary: Colors.white,
        secondary: Colors.white,
        surface: Color(0xFF161616),
        onSurface: Colors.white,
      ),
    );
  }

  static ThemeData _buildLightTheme() {
    final base = ThemeData.light();
    return base.copyWith(
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.pressed)) {
                return Colors.black.withOpacity(0.5);
              }
              return Colors.black;
            }),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
        ),
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          secondary: Colors.black,
          surface: Colors.black12,
          onSurface: Colors.black,
        ));
  }
}
