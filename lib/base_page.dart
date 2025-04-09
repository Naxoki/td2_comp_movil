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
        title: const Text('trabajo desarrollo 2 comp_movil'), // aqui cambiamos el nombre de la app
      ),
      body: body,

        // Botón flotante global: aparecerá en todas las pantallas que usen BasePage.
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí defines la acción global, por ejemplo, puede ser abrir un formulario,
          // navegar a una pantalla especial o lo que requieras.
          // En este ejemplo simplemente imprime un mensaje en consola.
          print('Botón flotante global presionado');
        },
        tooltip: 'Acción Global',
        backgroundColor: Colors.blue,
        shape: CircleBorder(
          side: BorderSide(color: const Color.fromARGB(33, 255, 255, 255), width: 0.1), // Borde blanco
        ),
        child: const Icon(Icons.send),
        
      ),


        // Envolvemos el BottomNavigationBar en un Container con un borde superior.
        bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          // aqui defines el borde
          border: Border(
            top: BorderSide(color: Color.fromARGB(55, 158, 158, 158), width: 0.1),
          ),
        ),


        child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(context, index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 1), 
              child: Icon(Icons.home, size: 30),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 1), 
              child: Icon(Icons.search, size: 30),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 1), 
              child: Icon(Icons.star, size: 30),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 1), 
              child: Icon(Icons.group, size: 30),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 1), 
              child: Icon(Icons.notifications, size: 30),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 1), 
              child: Icon(Icons.message, size: 30),
            ),
            label: '',
          ),
          
        ],
      ),
      ),
    );
  }
}
