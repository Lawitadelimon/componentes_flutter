import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

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