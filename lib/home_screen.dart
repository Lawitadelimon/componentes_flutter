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
              leading: Icon(Icons.wordpress_outlined),
              title: Text('GSW campeones NBA',
              style: TextStyle(color: Color.fromARGB(255, 7, 57, 255), fontWeight: FontWeight.bold),
              ),
              subtitle: Text('2020-07-21 - Chase Center'),
              trailing: Icon(Icons.add_location_alt_outlined),
            ),
            Divider(),
              ListTile(
              leading: Icon(Icons.account_balance_sharp),
              title: Text('Curry el mejor jugador',
              style: TextStyle(color: Color.fromARGB(255, 7, 57, 255), fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Campeon MVP'),
              trailing: Icon(Icons.add_location_alt_outlined),
            ),
            Divider(),
              ListTile(
              leading: Icon(Icons.wordpress_outlined),
              title: Text('Splash Brothers',
              style: TextStyle(color: Color.fromARGB(255, 7, 57, 255), fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Klay & Curry'),
              trailing: Icon(Icons.add_location_alt_outlined),
            ),
          ]
        ),
      );
  }
}