import 'package:flutter/material.dart';
import 'package:practica3/screens/infinitie_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Componentes de flutter',
            style: TextStyle(color: Color.fromARGB(255, 1, 16, 29),
            fontWeight: FontWeight.bold
            ),  
          ),
        ),
          body: ListView(
            children: [
              ListTile(
                leading:  const Icon(Icons.input_rounded, color: AppTheme.mainColor),
              title: Text('Entradas', 
              style: Theme.of(context).textTheme.headlineLarge,
              
              ),
              subtitle:  Text('Diferentes widgets para entradas flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall),
              trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.accentColor
              ),
              onTap: (){
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const InputsScreen();
                });
                Navigator.push(context, ruta1);
              },
            ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.list_alt_rounded, color: AppTheme.mainColor),
              title: Text('ListView.builder',
              style: Theme.of(context).textTheme.headlineLarge, 
              ),
              subtitle:  Text('Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall),
              trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.accentColor
              ),
              onTap: (){
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteListScreen();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notification_add, color: AppTheme.mainColor,),
            title: Text('Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('Creación de notificaciones',
            style: AppTheme.lightTheme.textTheme.bodySmall),
            trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.accentColor
            ),
            onTap: (){
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NotificationsScreen();
                });
                Navigator.push(context, ruta3);
              },
          ),
        ],
      ),
    );
  }
}