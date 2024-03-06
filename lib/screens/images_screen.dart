import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
  Widget imageWeb(){
    return Center(
      child: Image.network(
        'https://i.pinimg.com/originals/82/9a/82/829a82bd6f39f7456c6f4cc2dacc27f6.jpg'
      ),
    );
  }
}