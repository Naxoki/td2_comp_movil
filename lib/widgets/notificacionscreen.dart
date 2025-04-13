import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú Principal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Acción para el botón Verificado
                print('Verificado seleccionado');
              },
              child: Text('Verificado'),
            ),
            SizedBox(height: 16.0), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                // Acción para el botón Menciones
                print('Menciones seleccionado');
              },
              child: Text('Menciones'),
            ),
            // Otros botones o elementos del menú
          ],
        ),
      ),
    );
  }
}

class NotificacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla de Notificaciones')),
      body: Center(
        child: Text(
          'Aquí se mostrarán las notificaciones.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MainMenu()));
}
