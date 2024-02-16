import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes de Flutter'),
        ),
        body: ListView(
          children:  [
              ListTile(
              leading: const Icon(Icons.wordpress_outlined),
              title: Text('GSW campeones NBA',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('2020-07-21 - Chase Center'),
              trailing: const Icon(Icons.add_home_work_outlined),
            ),
            
              ListTile(
                leading: const Icon(Icons.accessibility_outlined),
              title: Text('Curry el mejor jugador',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('Campeon MVP'),
              trailing: const Icon(Icons.assistant_outlined),
              ),
              
              ListTile(
              leading: const Icon(Icons.waving_hand),
              title: Text('Splash Brothers',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('Klay & Curry'),
              trailing: const Icon(Icons.wb_incandescent),
            ),
          ]
        ),
      );
  }
}