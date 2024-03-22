import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinitie_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final List selectedData;

  const DataScreen({Key? key, required this.selectedData}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  int selectedIndex = 0;

  void openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());

      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
        case 3:
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
        case 4:
        SystemChannels.platform.invokeMethod('System  Navigator.pop');
      }

      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Screen',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Datos Guardados:',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            const Divider(),
            
            Expanded(
              child: ListView.builder(
                itemCount: widget.selectedData.length,
                itemBuilder: (BuildContext context, int index) {
                  final data = widget.selectedData[index];
                  return ListTile(
                    title: Text(
                      data['pregunta'],
                      style: AppTheme.lightTheme.textTheme.headlineLarge,
                    ),
                    subtitle: Text(
                      data['respuesta'].toString(),
                      style: AppTheme.lightTheme.textTheme.bodySmall,
                    ),
                  );
                },
              ),
            ),
          ],
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