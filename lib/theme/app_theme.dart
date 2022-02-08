import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    
    //appBarTheme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    //textButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary) 
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
             primary: Colors.indigo,
             shape: const StadiumBorder(),
             elevation: 0
      ),
    )
  );
}