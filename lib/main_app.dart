import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 156, 228, 240),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(235, 27, 126, 154),),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          )
        ),
      ),
    );
  }
}
