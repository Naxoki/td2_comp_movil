import 'package:flutter/material.dart';

class NotificationButtons extends StatelessWidget {
  const NotificationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Fondo negro
                foregroundColor: Colors.white, // Texto blanco
              ),
              onPressed: () {
                print('Botón Todas presionado');
              },
              child: const Text('Todas'),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                print('Botón Verificado presionado');
              },
              child: const Text('Verificado'),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                print('Botón Menciones presionado');
              },
              child: const Text('Menciones'),
            ),
          ),
        ],
      ),
    );
  }
}
