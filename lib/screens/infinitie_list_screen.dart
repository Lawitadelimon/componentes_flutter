import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';


class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}


class _InfiniteListScreenState extends State<InfiniteListScreen> {
  int selectedIndex = 0;
  int selectedRadioOption = 0; //Para los RadioButton
  
  openScreen(int index){
    setState(() {
      MaterialPageRoute ruta = 
            MaterialPageRoute(builder: (context) => const HomeScreen());
    switch(index){
      case 0: ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
      case 1: ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
      case 2: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
          break;
      case 3: ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      case 4:
        SystemChannels.platform.invokeMethod('System  Navigator.pop');
  }
  selectedIndex = index;
      print('selectedIndex = $selectedIndex');
      Navigator.push(
        context, ruta
        );
    });
    
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Infinita')
        ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          
          
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        unselectedItemColor: AppTheme.accentColor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.mainColor,
            icon: Icon(Icons.home_outlined,
            color: AppTheme.accentColor,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input,
            color: AppTheme.accentColor,
            ),
            label: "Entradas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active,
            color: AppTheme.accentColor,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image,
            color: AppTheme.accentColor,
            ),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app,
            color: AppTheme.accentColor,
            ),
            label: "Salir",
          ),
          
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }
}