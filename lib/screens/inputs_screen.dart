import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0; //Para los RadioButton
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
            entradasRadio(),
            Text(
              'Que usas para correr tus apps de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
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


  Column entradasRadio(){
    return Column(
    children: [
      Text(
        'Que prefieres usar para desarrollo movil?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
      ListTile(
        title: Text(
          'Kotlin',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        leading: Transform.scale(
          scale: 1.1,
          child: Radio(
            value: 1,
            groupValue: selectedRadioOption,
            onChanged: (value){
              setState(() {
                selectedRadioOption = value!;
                print('Opcion seleccionada: $selectedRadioOption');
              });
            },
          ),
        ),
      ),
      ListTile(
        title: Text(
          'Flutter',
          style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        leading: Transform.scale(
          scale: 1.1,
          child: Radio(
            value: 2,
            groupValue: selectedRadioOption,
            onChanged: (value){
              setState(() {
                selectedRadioOption = value!;
                print('Opcion seleccionada: $selectedRadioOption');
              });
            },
          ),
        ),
      ),
    ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Text(
        'Navegador',
        style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked1, 
          onChanged: (value){
          setState(() {
            isChecked1 = value!;
            print('Valor del Navegador: $isChecked1');
          });
          }
        ),
        Text(
        'Emulador',
        style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked2, 
          onChanged: (value){
          setState(() {
            isChecked2 = value!;
            print('Valor del Emulador: $isChecked2');
          });
          }
        ),
        Text(
        'Smartphone',
        style: AppTheme.lightTheme.textTheme.headlineSmall,
        ),
        Checkbox(
          value: isChecked3, 
          onChanged: (value){
          setState(() {
            isChecked3 = value!;
            print('Valor del Smartphone: $isChecked3');
          });
          }
        ),
        
      ],
    );
  }
}