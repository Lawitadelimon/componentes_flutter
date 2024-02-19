import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Declaraciones de color  
  static const mainColor = Color.fromARGB(255, 20, 83, 156);
  static const backColor = Color.fromARGB(248, 164, 227, 229);

  //Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme:  TextTheme(
      headlineLarge: GoogleFonts.comicNeue(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: const Color.fromARGB(255, 75, 118, 236),
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 1.0,
        fontStyle: FontStyle.normal
      ),
      
    ),
  ); 
}