import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinitie_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
      case 3: ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
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
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagenes',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
      ),
      body: ListView(
        children:  [
          imageCard(),
          imageWeb(),
        ],
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
            icon: Icon(Icons.list,
            color: AppTheme.accentColor,
            ),
            label: "Lista Infinita",
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

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30) 
      ),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
        children: [
          const Image(
              image: AssetImage('assets/imgs/curry1.jpeg')
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(' ❤️C U R R Y❤️',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ) 
    );
  }
  Stack imageWeb(){
    return Stack(
      children: <Widget>[
        const Center( 
            child: CircularProgressIndicator(),
          ),
        
        Center(
          child: SizedBox(
          height: 450,
          width: 450,
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://upload.wikimedia.org/wikipedia/commons/3/36/Stephen_Curry_dribbling_2016_%28cropped%29.jpg'
            ),
          // Image.network(
          //   ), 
          //Es para traes imagen de la web
          ),
        ), 
      ],
    );
  }
  
}
