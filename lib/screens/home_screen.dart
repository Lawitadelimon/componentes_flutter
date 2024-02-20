import 'package:flutter/material.dart';
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
            trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.accentColor),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.list_alt_rounded, color: AppTheme.mainColor),
            title: Text('ListView.builder',
            style: Theme.of(context).textTheme.headlineLarge, 
            ),
            subtitle:  Text('Scroll infinito',
            style: AppTheme.lightTheme.textTheme.bodySmall),
            trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.accentColor),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notification_add, color: AppTheme.mainColor,),
            title: Text('Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,
            ),
            subtitle: Text('Creación de notificaciones',
            style: AppTheme.lightTheme.textTheme.bodySmall),
            trailing: const Icon(Icons.arrow_circle_right, color: AppTheme.accentColor),
          ),
        ],
      ),
    );
  }
}