import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final int currentIndex;
  final Widget body;
  // Agregamos un parámetro opcional para el AppBar.
  final PreferredSizeWidget? appBar;

  const BasePage({
    Key? key,
    required this.currentIndex,
    required this.body,
    this.appBar,
  }) : super(key: key);

  // Función para manejar la navegación en el BottomNavigationBar.
  void _onItemTapped(BuildContext context, int index) {
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
      case 6:
        Navigator.pushReplacementNamed(context, '/menu7');
        break;  
      default:
        Navigator.pushReplacementNamed(context, '/menu1');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Si se pasa un appBar personalizado, se usará; de lo contrario, se genera uno por defecto.
      appBar: appBar ??
          AppBar(
            title: const Text('Aplicación con Menú Inferior'),
          ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí defines la acción global del FAB.
          print('FAB global presionado');
        },
        tooltip: 'Nuevo mensaje',
        backgroundColor: const Color.fromARGB(255, 49, 176, 250),
        shape: CircleBorder(side: BorderSide(color: const Color.fromARGB(0, 255, 255, 255), width: 0.2)),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey, width: 1),
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
