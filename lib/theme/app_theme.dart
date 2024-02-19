import 'package:flutter/material.dart';

class AppTheme{
  // Declaraciones de color  
  static const mainColor = Color.fromARGB(255, 8, 79, 161);
  static const backColor = Color.fromARGB(248, 164, 227, 229);

  //Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-serif',
      ),
    ),
  ); 
}