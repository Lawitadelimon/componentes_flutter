import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas')
        ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
                const ElevatedButton(
                onPressed: null, 
                child: Text('Guardar',
                ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.mainColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,
            color: AppTheme.accentColor,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list,
            color: AppTheme.accentColor,

            ),
            label: "Datos",
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

  TextField entradaTexto() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre:', 
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }


  Row entradaSwitch(){
    return Row(
      children: <Widget> [
        const FlutterLogo(),
        Text(
          'Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
          ),
        Switch(
          value: valueSwitch ,
          onChanged: (value){
            setState(() {
              valueSwitch = value;
              print('Estado del switch: $valueSwitch');
            });
          },
        ),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      children: [
        Text(
          'Que tanto te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: valueSlider,
          activeColor: AppTheme.mainColor,
          inactiveColor: const Color.fromARGB(255, 89, 196, 223),
          thumbColor: const Color.fromARGB(255, 255, 255, 255),
          divisions: 10,
          label: '${valueSlider.round()}',

          onChanged: (value){
          setState(() {
            valueSlider = value;  
            print('Valor del Slider $valueSlider');
          });
          },
        ),
      ],
    );
  }
}