import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  // Índice del menú seleccionado (del 0 al 5)
  final int currentIndex;
  // Contenido específico de la pantalla
  final Widget body;

  const BasePage({
    Key? key,
    required this.currentIndex,
    required this.body,
  }) : super(key: key);

  // Función para gestionar la navegación cuando se toca un elemento del menú inferior.
  void _onItemTapped(BuildContext context, int index) {
    // Usamos Navigator.pushReplacementNamed para reemplazar la pantalla actual.
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/menu1');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/menu2');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/menu3');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/menu4');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/menu5');
        break;
      case 5:
        Navigator.pushReplacementNamed(context, '/menu6');
        break;
      default:
        Navigator.pushReplacementNamed(context, '/menu1');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fake Tuiiiiter'), // aqui cambiamos el nombre de la app
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(context, index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'Menu1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Menu2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Menu3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_4),
            label: 'Menu4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_5),
            label: 'Menu5',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_6),
            label: 'Menu6',
          ),
        ],
      ),
    );
  }
}
