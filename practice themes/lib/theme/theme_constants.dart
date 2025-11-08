import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.blue;
const COLOR_ACCENT = Colors.orange;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: COLOR_PRIMARY, 
  fontFamily: 'Oswald',
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: COLOR_ACCENT, 
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(COLOR_ACCENT),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  // accentColor: Colors.white, // DEPRECATED: Sebaiknya hapus atau ganti dengan colorScheme
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: Colors.white,
  ),
  fontFamily: 'Oswald',
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all<Color>(Colors.white),
    trackColor: MaterialStateProperty.all<Color>(Colors.grey),
  ), 
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.1),
  ), 
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      overlayColor: MaterialStateProperty.all<Color>(Colors.black26),
    ), 
  ),
);