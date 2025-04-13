import 'package:flutter/material.dart';
import 'widgets/base_page.dart';
import 'widgets/notificaciones_Bar.dart';
import 'widgets/notificaciones1.dart';

class Menu5Page extends StatelessWidget {
  const Menu5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      currentIndex: 0, // Indica que Menu1 está seleccionado.
      appBar: notificacionBar('Menú 1'),
      body: ListView(
        children: [
          // Nueva barra justo debajo del AppBar con 2 botones que ocupen todo el ancho
          Container(
            color: const Color.fromARGB(
              255,
              0,
              0,
              0,
            ), // Color de fondo para la barra (puedes personalizarlo)
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Row(
              children: [
                // Primer botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 1
                      print('Botón 1 presionado');
                    },
                    child: const Text('Todas'),
                  ),
                ),
                const SizedBox(width: 8.0),

                // Primer botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 1
                      print('Botón 1 presionado');
                    },
                    child: const Text('Verificado'),
                  ),
                ),
                const SizedBox(width: 8.0),
                // Segundo botón expandido
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción del Botón 2
                      print('Botón 2 presionado');
                    },
                    child: const Text('Menciones'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),

          // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ),
          // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ), // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ), // Ejemplo de primera notificación
          NotificationCard(
            icon: Icons.notifications,
            title: 'Notificación Importante',
            time: '10:30 AM',
            message: 'Tienes un nuevo mensaje en tu buzón de entrada.',
          ),
        ],
      ),
    );
  }
}
