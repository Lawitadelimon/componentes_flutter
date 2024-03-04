import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Declaraciones de color  
  static const mainColor = Color.fromARGB(255, 20, 83, 156);
  static const accentColor = Color.fromARGB(199, 0, 0, 0);
  static const backColor = Color.fromARGB(248, 164, 227, 229);

  //Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme:  AppBarTheme(
      color: mainColor,
      titleTextStyle: GoogleFonts.alice(
        color: backColor,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: accentColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          mainColor
          ),
          foregroundColor: MaterialStateProperty.all(
            backColor
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.comicNeue(fontSize: 18.0),
        ),
      )
    ),
    textTheme:  TextTheme(
      headlineLarge: GoogleFonts.comicNeue(
        color: mainColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: const Color.fromARGB(225, 59, 85, 188),
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 1.0,
        fontStyle: FontStyle.normal
      ),

      headlineSmall: GoogleFonts.montserrat(
        color: accentColor,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 1.5,
      ),

      bodySmall: GoogleFonts.abel(
        color: accentColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal

      ),

      
    ),
  );
}